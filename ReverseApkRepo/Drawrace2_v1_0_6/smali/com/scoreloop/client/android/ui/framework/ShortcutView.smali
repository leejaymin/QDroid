.class public Lcom/scoreloop/client/android/ui/framework/ShortcutView;
.super Lcom/scoreloop/client/android/ui/framework/SegmentedView;
.source "ShortcutView.java"


# instance fields
.field private _shortcutDescriptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/scoreloop/client/android/ui/framework/ShortcutDescription;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attributeSet"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/scoreloop/client/android/ui/framework/SegmentedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/scoreloop/client/android/ui/framework/ShortcutView;->_shortcutDescriptions:Ljava/util/List;

    .line 46
    return-void
.end method


# virtual methods
.method public setDescriptions(Landroid/app/Activity;Ljava/util/List;)V
    .locals 11
    .parameter "activity"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Lcom/scoreloop/client/android/ui/framework/ShortcutDescription;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p2, shortcutDescriptions:Ljava/util/List;,"Ljava/util/List<Lcom/scoreloop/client/android/ui/framework/ShortcutDescription;>;"
    iget-object v8, p0, Lcom/scoreloop/client/android/ui/framework/ShortcutView;->_shortcutDescriptions:Ljava/util/List;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/scoreloop/client/android/ui/framework/ShortcutView;->_shortcutDescriptions:Ljava/util/List;

    invoke-virtual {v8, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 52
    iput-object p2, p0, Lcom/scoreloop/client/android/ui/framework/ShortcutView;->_shortcutDescriptions:Ljava/util/List;

    .line 85
    :goto_0
    return-void

    .line 56
    :cond_0
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/framework/ShortcutView;->removeAllViews()V

    .line 58
    iput-object p2, p0, Lcom/scoreloop/client/android/ui/framework/ShortcutView;->_shortcutDescriptions:Ljava/util/List;

    .line 59
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v8

    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 60
    .local v0, display:Landroid/view/Display;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/scoreloop/client/android/ui/framework/ShortcutDescription;

    .line 61
    .local v6, shortcutDescription:Lcom/scoreloop/client/android/ui/framework/ShortcutDescription;
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v8

    const v9, 0x7f03003b

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    .line 62
    .local v7, viewGroup:Landroid/view/ViewGroup;
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/framework/ShortcutView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a0004

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v3, v8

    .line 63
    .local v3, margin:I
    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    .line 64
    .local v4, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual {v0, v4}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 65
    const/4 v2, 0x0

    .line 66
    .local v2, lp:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v0}, Landroid/view/Display;->getOrientation()I

    move-result v5

    .line 67
    .local v5, rotation:I
    iget v8, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v9, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    if-gt v8, v9, :cond_1

    const/4 v8, 0x3

    if-eq v5, v8, :cond_1

    const/4 v8, 0x1

    if-ne v5, v8, :cond_2

    .line 68
    :cond_1
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .end local v2           #lp:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v8, -0x1

    const/4 v9, 0x0

    const/high16 v10, 0x3f80

    invoke-direct {v2, v8, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 69
    .restart local v2       #lp:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v8, 0x11

    iput v8, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 70
    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 71
    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 78
    :goto_2
    invoke-virtual {v7, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 79
    invoke-virtual {v6}, Lcom/scoreloop/client/android/ui/framework/ShortcutDescription;->getTextId()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->setId(I)V

    .line 80
    const v8, 0x7f0c008b

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    invoke-virtual {v6}, Lcom/scoreloop/client/android/ui/framework/ShortcutDescription;->getImageId()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 81
    invoke-virtual {p0, v7}, Lcom/scoreloop/client/android/ui/framework/ShortcutView;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 73
    :cond_2
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .end local v2           #lp:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v8, 0x0

    const/4 v9, -0x2

    const/high16 v10, 0x3f80

    invoke-direct {v2, v8, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 74
    .restart local v2       #lp:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v8, 0x11

    iput v8, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 75
    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 76
    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    goto :goto_2

    .line 84
    .end local v2           #lp:Landroid/widget/LinearLayout$LayoutParams;
    .end local v3           #margin:I
    .end local v4           #metrics:Landroid/util/DisplayMetrics;
    .end local v5           #rotation:I
    .end local v6           #shortcutDescription:Lcom/scoreloop/client/android/ui/framework/ShortcutDescription;
    .end local v7           #viewGroup:Landroid/view/ViewGroup;
    :cond_3
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/framework/ShortcutView;->prepareUsage()V

    goto/16 :goto_0
.end method

.method protected setSegmentEnabled(IZ)V
    .locals 4
    .parameter "segment"
    .parameter "enabled"

    .prologue
    const v3, 0x7f0c008b

    .line 89
    invoke-virtual {p0, p1}, Lcom/scoreloop/client/android/ui/framework/ShortcutView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 90
    .local v1, view:Landroid/view/View;
    iget-object v2, p0, Lcom/scoreloop/client/android/ui/framework/ShortcutView;->_shortcutDescriptions:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scoreloop/client/android/ui/framework/ShortcutDescription;

    .line 92
    .local v0, shortcutDescription:Lcom/scoreloop/client/android/ui/framework/ShortcutDescription;
    if-eqz p2, :cond_0

    .line 93
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/ui/framework/ShortcutDescription;->getActiveImageId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 94
    const v2, 0x7f020074

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 99
    :goto_0
    return-void

    .line 96
    :cond_0
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/ui/framework/ShortcutDescription;->getImageId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 97
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
