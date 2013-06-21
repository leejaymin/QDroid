.class final Lcom/viewpagerindicator/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/viewpagerindicator/TabPageIndicator;


# direct methods
.method constructor <init>(Lcom/viewpagerindicator/TabPageIndicator;)V
    .locals 0

    iput-object p1, p0, Lcom/viewpagerindicator/c;->a:Lcom/viewpagerindicator/TabPageIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    check-cast p1, Lcom/viewpagerindicator/e;

    iget-object v0, p0, Lcom/viewpagerindicator/c;->a:Lcom/viewpagerindicator/TabPageIndicator;

    #getter for: Lcom/viewpagerindicator/TabPageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;
    invoke-static {v0}, Lcom/viewpagerindicator/TabPageIndicator;->access$0(Lcom/viewpagerindicator/TabPageIndicator;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-virtual {p1}, Lcom/viewpagerindicator/e;->a()I

    move-result v1

    iget-object v2, p0, Lcom/viewpagerindicator/c;->a:Lcom/viewpagerindicator/TabPageIndicator;

    #getter for: Lcom/viewpagerindicator/TabPageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;
    invoke-static {v2}, Lcom/viewpagerindicator/TabPageIndicator;->access$0(Lcom/viewpagerindicator/TabPageIndicator;)Landroid/support/v4/view/ViewPager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/viewpagerindicator/c;->a:Lcom/viewpagerindicator/TabPageIndicator;

    #getter for: Lcom/viewpagerindicator/TabPageIndicator;->mTabReselectedListener:Lcom/viewpagerindicator/TabPageIndicator$OnTabReselectedListener;
    invoke-static {v0}, Lcom/viewpagerindicator/TabPageIndicator;->access$1(Lcom/viewpagerindicator/TabPageIndicator;)Lcom/viewpagerindicator/TabPageIndicator$OnTabReselectedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viewpagerindicator/c;->a:Lcom/viewpagerindicator/TabPageIndicator;

    #getter for: Lcom/viewpagerindicator/TabPageIndicator;->mTabReselectedListener:Lcom/viewpagerindicator/TabPageIndicator$OnTabReselectedListener;
    invoke-static {v0}, Lcom/viewpagerindicator/TabPageIndicator;->access$1(Lcom/viewpagerindicator/TabPageIndicator;)Lcom/viewpagerindicator/TabPageIndicator$OnTabReselectedListener;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/viewpagerindicator/TabPageIndicator$OnTabReselectedListener;->onTabReselected(I)V

    :cond_0
    return-void
.end method
