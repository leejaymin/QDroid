.class public Lcom/viewpagerindicator/sample/SampleTabsDefault;
.super Lcom/viewpagerindicator/sample/BaseSampleActivity;

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/google/ads/AdListener;


# static fields
.field private static final CONTENT:[Ljava/lang/String;


# instance fields
.field private about_titlebar_right_ll:Landroid/widget/LinearLayout;

.field private adView:Lcom/google/ads/AdView;

.field private advertisement_ll:Landroid/widget/LinearLayout;

.field private currnetTab:Landroid/widget/TextView;

.field private tab1_tb:Landroid/widget/TextView;

.field private tab2_tb:Landroid/widget/TextView;

.field private tab3_tb:Landroid/widget/TextView;

.field private titlebar_info_iv:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Recent"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Artists"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Albums"

    aput-object v2, v0, v1

    sput-object v0, Lcom/viewpagerindicator/sample/SampleTabsDefault;->CONTENT:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/viewpagerindicator/sample/BaseSampleActivity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/viewpagerindicator/sample/SampleTabsDefault;->currnetTab:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic access$0()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/viewpagerindicator/sample/SampleTabsDefault;->CONTENT:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/viewpagerindicator/sample/SampleTabsDefault;)Lcom/google/ads/AdView;
    .locals 1

    iget-object v0, p0, Lcom/viewpagerindicator/sample/SampleTabsDefault;->adView:Lcom/google/ads/AdView;

    return-object v0
.end method

.method private checkSetting()V
    .locals 3

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "mode_screenoff_optimize"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Limoblife/toolbox/full/ScreenEventService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/viewpagerindicator/sample/SampleTabsDefault;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_0
    return-void
.end method

.method private init()V
    .locals 2

    new-instance v0, Lcom/viewpagerindicator/sample/b;

    invoke-virtual {p0}, Lcom/viewpagerindicator/sample/SampleTabsDefault;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/viewpagerindicator/sample/b;-><init>(Lcom/viewpagerindicator/sample/SampleTabsDefault;Landroid/support/v4/app/FragmentManager;)V

    iput-object v0, p0, Lcom/viewpagerindicator/sample/SampleTabsDefault;->mAdapter:Lcom/viewpagerindicator/sample/c;

    const v0, 0x7f0800b1

    invoke-virtual {p0, v0}, Lcom/viewpagerindicator/sample/SampleTabsDefault;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/viewpagerindicator/sample/SampleTabsDefault;->mPager:Landroid/support/v4/view/ViewPager;

    iget-object v0, p0, Lcom/viewpagerindicator/sample/SampleTabsDefault;->mPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/viewpagerindicator/sample/SampleTabsDefault;->mAdapter:Lcom/viewpagerindicator/sample/c;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    const v0, 0x7f0800fe

    invoke-virtual {p0, v0}, Lcom/viewpagerindicator/sample/SampleTabsDefault;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/viewpagerindicator/TabPageIndicator;

    iput-object v0, p0, Lcom/viewpagerindicator/sample/SampleTabsDefault;->mIndicator:Lcom/viewpagerindicator/PageIndicator;

    iget-object v0, p0, Lcom/viewpagerindicator/sample/SampleTabsDefault;->mIndicator:Lcom/viewpagerindicator/PageIndicator;

    iget-object v1, p0, Lcom/viewpagerindicator/sample/SampleTabsDefault;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-interface {v0, v1}, Lcom/viewpagerindicator/PageIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    iget-object v0, p0, Lcom/viewpagerindicator/sample/SampleTabsDefault;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    const v0, 0x7f08006c

    invoke-virtual {p0, v0}, Lcom/viewpagerindicator/sample/SampleTabsDefault;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/viewpagerindicator/sample/SampleTabsDefault;->tab1_tb:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/viewpagerindicator/sample/SampleTabsDefault;->tab1_tb:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/viewpagerindicator/sample/SampleTabsDefault;->tab1_tb:Landroid/widget/TextView;

    const v1, 0x7f02002a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    const v0, 0x7f08006d

    invoke-virtual {p0, v0}, Lcom/viewpagerindicator/sample/SampleTabsDefault;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/viewpagerindicator/sample/SampleTabsDefault;->tab2_tb:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/viewpagerindicator/sample/SampleTabsDefault;->tab2_tb:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f08006e

    invoke-virtual {p0, v0}, Lcom/viewpagerindicator/sample/SampleTabsDefault;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/viewpagerindicator/sample/SampleTabsDefault;->tab3_tb:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/viewpagerindicator/sample/SampleTabsDefault;->tab3_tb:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f08004a

    invoke-virtual {p0, v0}, Lcom/viewpagerindicator/sample/SampleTabsDefault;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/viewpagerindicator/sample/SampleTabsDefault;->about_titlebar_right_ll:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/viewpagerindicator/sample/SampleTabsDefault;->about_titlebar_right_ll:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f08004b

    invoke-virtual {p0, v0}, Lcom/viewpagerindicator/sample/SampleTabsDefault;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/viewpagerindicator/sample/SampleTabsDefault;->titlebar_info_iv:Landroid/widget/ImageView;

    return-void
.end method

.method private initAd()V
    .locals 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-A- initAd(): {"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/google/ads/AdView;

    sget-object v1, Lcom/google/ads/AdSize;->SMART_BANNER:Lcom/google/ads/AdSize;

    const-string v2, "a1501114aac4eec"

    invoke-direct {v0, p0, v1, v2}, Lcom/google/ads/AdView;-><init>(Landroid/app/Activity;Lcom/google/ads/AdSize;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/viewpagerindicator/sample/SampleTabsDefault;->adView:Lcom/google/ads/AdView;

    iget-object v0, p0, Lcom/viewpagerindicator/sample/SampleTabsDefault;->adView:Lcom/google/ads/AdView;

    invoke-virtual {v0, p0}, Lcom/google/ads/AdView;->setAdListener(Lcom/google/ads/AdListener;)V

    const v0, 0x7f0800ff

    invoke-virtual {p0, v0}, Lcom/viewpagerindicator/sample/SampleTabsDefault;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/viewpagerindicator/sample/SampleTabsDefault;->advertisement_ll:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/viewpagerindicator/sample/SampleTabsDefault;->advertisement_ll:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/viewpagerindicator/sample/SampleTabsDefault;->adView:Lcom/google/ads/AdView;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-A- initAd(): }"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private initTapjoy()V
    .locals 3

    invoke-static {}, Lcom/a/g;->a()V

    invoke-virtual {p0}, Lcom/viewpagerindicator/sample/SampleTabsDefault;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "05272fe1-f791-4e78-a893-6cb976380f15"

    const-string v2, "5NBI6XgZCHNl67vEzhp4"

    invoke-static {v0, v1, v2}, Lcom/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private loadAd()V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-A- loadAd()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/viewpagerindicator/sample/a;

    invoke-direct {v1, p0}, Lcom/viewpagerindicator/sample/a;-><init>(Lcom/viewpagerindicator/sample/SampleTabsDefault;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private showSlpash()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Limoblife/toolbox/full/ui/ASplash;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/viewpagerindicator/sample/SampleTabsDefault;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onClick()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/viewpagerindicator/sample/SampleTabsDefault;->currnetTab:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onClick(): return"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/viewpagerindicator/sample/SampleTabsDefault;->tab1_tb:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/viewpagerindicator/sample/SampleTabsDefault;->tab1_tb:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/viewpagerindicator/sample/SampleTabsDefault;->currnetTab:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/viewpagerindicator/sample/SampleTabsDefault;->mPager:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/viewpagerindicator/sample/SampleTabsDefault;->tab2_tb:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/viewpagerindicator/sample/SampleTabsDefault;->tab2_tb:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/viewpagerindicator/sample/SampleTabsDefault;->currnetTab:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/viewpagerindicator/sample/SampleTabsDefault;->mPager:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/viewpagerindicator/sample/SampleTabsDefault;->tab3_tb:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/viewpagerindicator/sample/SampleTabsDefault;->tab3_tb:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/viewpagerindicator/sample/SampleTabsDefault;->currnetTab:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/viewpagerindicator/sample/SampleTabsDefault;->mPager:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/viewpagerindicator/sample/SampleTabsDefault;->about_titlebar_right_ll:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Limoblife/toolbox/full/ui/AAbout;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/viewpagerindicator/sample/SampleTabsDefault;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-direct {p0}, Lcom/viewpagerindicator/sample/SampleTabsDefault;->showSlpash()V

    invoke-super {p0, p1}, Lcom/viewpagerindicator/sample/BaseSampleActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/viewpagerindicator/sample/SampleTabsDefault;->requestWindowFeature(I)Z

    const v0, 0x7f03003a

    invoke-virtual {p0, v0}, Lcom/viewpagerindicator/sample/SampleTabsDefault;->setContentView(I)V

    invoke-direct {p0}, Lcom/viewpagerindicator/sample/SampleTabsDefault;->initTapjoy()V

    invoke-direct {p0}, Lcom/viewpagerindicator/sample/SampleTabsDefault;->initAd()V

    invoke-direct {p0}, Lcom/viewpagerindicator/sample/SampleTabsDefault;->init()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-F- onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/viewpagerindicator/sample/BaseSampleActivity;->onDestroy()V

    return-void
.end method

.method public onDismissScreen(Lcom/google/ads/Ad;)V
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "-A- onDismissScreen(): arg0 = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onFailedToReceiveAd(Lcom/google/ads/Ad;Lcom/google/ads/AdRequest$ErrorCode;)V
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "-A- onFailedToReceiveAd(): arg1 = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onLeaveApplication(Lcom/google/ads/Ad;)V
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "-A- onLeaveApplication(): arg0 = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 4

    const v3, 0x7f02002a

    const v2, 0x7f02002c

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onPageSelected()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/viewpagerindicator/sample/SampleTabsDefault;->tab1_tb:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/viewpagerindicator/sample/SampleTabsDefault;->tab2_tb:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/viewpagerindicator/sample/SampleTabsDefault;->tab3_tb:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/viewpagerindicator/sample/SampleTabsDefault;->tab1_tb:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/viewpagerindicator/sample/SampleTabsDefault;->tab2_tb:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/viewpagerindicator/sample/SampleTabsDefault;->tab3_tb:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/viewpagerindicator/sample/SampleTabsDefault;->tab1_tb:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/viewpagerindicator/sample/SampleTabsDefault;->tab2_tb:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/viewpagerindicator/sample/SampleTabsDefault;->tab3_tb:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-F- onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/viewpagerindicator/sample/BaseSampleActivity;->onPause()V

    return-void
.end method

.method public onPresentScreen(Lcom/google/ads/Ad;)V
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "-A- onPresentScreen(): arg0 = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onReceiveAd(Lcom/google/ads/Ad;)V
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "-A- onReceiveAd(): arg0 = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-F- onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/viewpagerindicator/sample/BaseSampleActivity;->onResume()V

    return-void
.end method

.method public onStart()V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-F- onStart()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/viewpagerindicator/sample/BaseSampleActivity;->onStart()V

    invoke-direct {p0}, Lcom/viewpagerindicator/sample/SampleTabsDefault;->loadAd()V

    return-void
.end method

.method public onStop()V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-F- onStop()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/viewpagerindicator/sample/BaseSampleActivity;->onStop()V

    return-void
.end method
