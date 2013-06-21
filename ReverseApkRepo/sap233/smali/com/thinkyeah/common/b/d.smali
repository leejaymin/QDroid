.class public abstract Lcom/thinkyeah/common/b/d;
.super Landroid/support/v4/app/g;


# instance fields
.field protected m:Landroid/widget/TabHost;

.field protected n:Landroid/widget/TabWidget;

.field protected o:Landroid/support/v4/view/ViewPager;

.field private p:Ljava/util/List;

.field private q:Lcom/thinkyeah/common/b/g;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/app/g;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/thinkyeah/common/b/d;)V
    .locals 0

    invoke-direct {p0}, Lcom/thinkyeah/common/b/d;->i()V

    return-void
.end method

.method private i()V
    .locals 8

    const v7, 0x7f0b0051

    const v6, 0x7f0b0052

    iget-object v0, p0, Lcom/thinkyeah/common/b/d;->p:Ljava/util/List;

    iget-object v1, p0, Lcom/thinkyeah/common/b/d;->m:Landroid/widget/TabHost;

    invoke-virtual {v1}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/thinkyeah/common/b/f;

    const/4 v1, 0x0

    move v3, v1

    :goto_0
    iget-object v1, p0, Lcom/thinkyeah/common/b/d;->n:Landroid/widget/TabWidget;

    invoke-virtual {v1}, Landroid/widget/TabWidget;->getChildCount()I

    move-result v1

    if-lt v3, v1, :cond_0

    iget-object v1, p0, Lcom/thinkyeah/common/b/d;->m:Landroid/widget/TabHost;

    invoke-virtual {v1}, Landroid/widget/TabHost;->getCurrentTabView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-interface {v0}, Lcom/thinkyeah/common/b/f;->b()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/thinkyeah/common/b/d;->m:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getCurrentTabView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/thinkyeah/common/b/d;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/thinkyeah/common/b/d;->m:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v0

    iget-object v1, p0, Lcom/thinkyeah/common/b/d;->o:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    invoke-virtual {p0}, Lcom/thinkyeah/common/b/d;->h()V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/thinkyeah/common/b/d;->p:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/thinkyeah/common/b/f;

    iget-object v2, p0, Lcom/thinkyeah/common/b/d;->n:Landroid/widget/TabWidget;

    invoke-virtual {v2, v3}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-interface {v1}, Lcom/thinkyeah/common/b/f;->a()I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v5, -0x333334

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-interface {v1}, Lcom/thinkyeah/common/b/f;->c()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(I)V

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0
.end method


# virtual methods
.method protected final a(Ljava/lang/String;Lcom/thinkyeah/common/b/f;Ljava/lang/Class;)V
    .locals 5

    iget-object v0, p0, Lcom/thinkyeah/common/b/d;->m:Landroid/widget/TabHost;

    invoke-virtual {v0, p1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f030021

    iget-object v3, p0, Lcom/thinkyeah/common/b/d;->n:Landroid/widget/TabWidget;

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    iget-object v0, p0, Lcom/thinkyeah/common/b/d;->p:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/thinkyeah/common/b/d;->q:Lcom/thinkyeah/common/b/g;

    invoke-virtual {v0, v1, p3}, Lcom/thinkyeah/common/b/g;->a(Landroid/widget/TabHost$TabSpec;Ljava/lang/Class;)V

    return-void
.end method

.method public final c(I)Landroid/support/v4/app/Fragment;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "android:switcher:2131427394:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/app/g;->b:Landroid/support/v4/app/l;

    invoke-virtual {v1, v0}, Landroid/support/v4/app/k;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method protected abstract g()V
.end method

.method protected h()V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-super {p0, p1}, Landroid/support/v4/app/g;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v1}, Lcom/thinkyeah/common/b/d;->requestWindowFeature(I)Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/thinkyeah/common/b/d;->p:Ljava/util/List;

    const v0, 0x7f030018

    invoke-virtual {p0, v0}, Lcom/thinkyeah/common/b/d;->setContentView(I)V

    const v0, 0x1020012

    invoke-virtual {p0, v0}, Lcom/thinkyeah/common/b/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TabHost;

    iput-object v0, p0, Lcom/thinkyeah/common/b/d;->m:Landroid/widget/TabHost;

    iget-object v0, p0, Lcom/thinkyeah/common/b/d;->m:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->setup()V

    iget-object v0, p0, Lcom/thinkyeah/common/b/d;->m:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v0

    iput-object v0, p0, Lcom/thinkyeah/common/b/d;->n:Landroid/widget/TabWidget;

    const v0, 0x7f0b0042

    invoke-virtual {p0, v0}, Lcom/thinkyeah/common/b/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/thinkyeah/common/b/d;->o:Landroid/support/v4/view/ViewPager;

    iget-object v0, p0, Lcom/thinkyeah/common/b/d;->o:Landroid/support/v4/view/ViewPager;

    const v3, 0x7f020063

    invoke-virtual {v0, v3}, Landroid/support/v4/view/ViewPager;->setPageMarginDrawable(I)V

    iget-object v0, p0, Lcom/thinkyeah/common/b/d;->o:Landroid/support/v4/view/ViewPager;

    const/high16 v3, 0x3f80

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-static {v1, v3, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v0, v3}, Landroid/support/v4/view/ViewPager;->setPageMargin(I)V

    new-instance v0, Lcom/thinkyeah/common/b/g;

    iget-object v3, p0, Lcom/thinkyeah/common/b/d;->m:Landroid/widget/TabHost;

    iget-object v4, p0, Lcom/thinkyeah/common/b/d;->o:Landroid/support/v4/view/ViewPager;

    invoke-direct {v0, p0, p0, v3, v4}, Lcom/thinkyeah/common/b/g;-><init>(Lcom/thinkyeah/common/b/d;Landroid/support/v4/app/g;Landroid/widget/TabHost;Landroid/support/v4/view/ViewPager;)V

    iput-object v0, p0, Lcom/thinkyeah/common/b/d;->q:Lcom/thinkyeah/common/b/g;

    invoke-virtual {p0}, Lcom/thinkyeah/common/b/d;->g()V

    iget-object v0, p0, Lcom/thinkyeah/common/b/d;->m:Landroid/widget/TabHost;

    invoke-virtual {v0, v2}, Landroid/widget/TabHost;->setCurrentTab(I)V

    invoke-direct {p0}, Lcom/thinkyeah/common/b/d;->i()V

    invoke-virtual {p0}, Lcom/thinkyeah/common/b/d;->getRequestedOrientation()I

    move-result v0

    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/thinkyeah/common/b/d;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    if-le v3, v0, :cond_1

    move v0, v1

    :goto_0
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/thinkyeah/common/b/d;->m:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TabWidget;->setOrientation(I)V

    :cond_0
    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    if-nez v0, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_0
.end method
