.class public Lcom/scoreloop/client/android/ui/framework/TabsActivity;
.super Landroid/app/ActivityGroup;
.source "TabsActivity.java"

# interfaces
.implements Lcom/scoreloop/client/android/ui/framework/TabsActivityProtocol;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/scoreloop/client/android/ui/framework/OptionsMenuForActivityGroup;


# instance fields
.field private _screenDescription:Lcom/scoreloop/client/android/ui/framework/ScreenDescription;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/app/ActivityGroup;-><init>()V

    return-void
.end method

.method private getTabActivityIdentifier(I)Ljava/lang/String;
    .locals 2
    .parameter "index"

    .prologue
    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tab-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getTabTextView(I)Landroid/widget/TextView;
    .locals 7
    .parameter "textResId"

    .prologue
    .line 130
    const v1, 0x7f030039

    .line 131
    .local v1, layoutId:I
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/framework/TabsActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f030039

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 132
    .local v3, tv:Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/framework/TabsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0003

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v0, v4

    .line 133
    .local v0, height:I
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, 0x0

    const/high16 v5, 0x3f80

    invoke-direct {v2, v4, v0, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 134
    .local v2, lp:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 135
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(I)V

    .line 136
    return-object v3
.end method

.method private startTab(I)V
    .locals 6
    .parameter "index"

    .prologue
    const/4 v5, 0x0

    .line 140
    const v2, 0x7f0c008c

    invoke-virtual {p0, v2}, Lcom/scoreloop/client/android/ui/framework/TabsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/scoreloop/client/android/ui/framework/TabView;

    .line 141
    .local v1, tabView:Lcom/scoreloop/client/android/ui/framework/TabView;
    invoke-virtual {v1, p1}, Lcom/scoreloop/client/android/ui/framework/TabView;->switchToSegment(I)V

    .line 144
    iget-object v2, p0, Lcom/scoreloop/client/android/ui/framework/TabsActivity;->_screenDescription:Lcom/scoreloop/client/android/ui/framework/ScreenDescription;

    invoke-virtual {v2, p1}, Lcom/scoreloop/client/android/ui/framework/ScreenDescription;->setSelectedBodyIndex(I)V

    .line 146
    iget-object v2, p0, Lcom/scoreloop/client/android/ui/framework/TabsActivity;->_screenDescription:Lcom/scoreloop/client/android/ui/framework/ScreenDescription;

    invoke-virtual {v2}, Lcom/scoreloop/client/android/ui/framework/ScreenDescription;->getBodyDescriptions()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scoreloop/client/android/ui/framework/ActivityDescription;

    .line 147
    .local v0, bodyDescription:Lcom/scoreloop/client/android/ui/framework/ActivityDescription;
    invoke-virtual {v0}, Lcom/scoreloop/client/android/ui/framework/ActivityDescription;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/scoreloop/client/android/ui/framework/TabsActivity;->getTabActivityIdentifier(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0c008d

    invoke-static {p0, v2, v3, v4, v5}, Lcom/scoreloop/client/android/ui/framework/ActivityHelper;->startLocalActivity(Landroid/app/ActivityGroup;Landroid/content/Intent;Ljava/lang/String;II)V

    .line 149
    invoke-virtual {v0, v5}, Lcom/scoreloop/client/android/ui/framework/ActivityDescription;->setEnabledWantsClearTop(Z)V

    .line 150
    return-void
.end method


# virtual methods
.method public isNavigationAllowed(Lcom/scoreloop/client/android/ui/framework/NavigationIntent;)Z
    .locals 3
    .parameter "navigationIntent"

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/framework/TabsActivity;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/LocalActivityManager;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 75
    .local v0, activity:Landroid/app/Activity;
    instance-of v2, v0, Lcom/scoreloop/client/android/ui/framework/BaseActivity;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 76
    check-cast v1, Lcom/scoreloop/client/android/ui/framework/BaseActivity;

    .line 77
    .local v1, baseActivity:Lcom/scoreloop/client/android/ui/framework/BaseActivity;
    invoke-virtual {v1, p1}, Lcom/scoreloop/client/android/ui/framework/BaseActivity;->isNavigationAllowed(Lcom/scoreloop/client/android/ui/framework/NavigationIntent;)Z

    move-result v2

    .line 79
    .end local v1           #baseActivity:Lcom/scoreloop/client/android/ui/framework/BaseActivity;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 84
    move-object v1, p1

    check-cast v1, Lcom/scoreloop/client/android/ui/framework/TabView;

    .line 85
    .local v1, tabView:Lcom/scoreloop/client/android/ui/framework/TabView;
    invoke-virtual {v1}, Lcom/scoreloop/client/android/ui/framework/TabView;->getSelectedSegment()I

    move-result v0

    .line 86
    .local v0, selectedTab:I
    invoke-direct {p0, v0}, Lcom/scoreloop/client/android/ui/framework/TabsActivity;->startTab(I)V

    .line 87
    invoke-static {}, Lcom/scoreloop/client/android/ui/framework/ScreenManagerSingleton;->get()Lcom/scoreloop/client/android/ui/framework/ScreenManager;

    move-result-object v2

    iget-object v3, p0, Lcom/scoreloop/client/android/ui/framework/TabsActivity;->_screenDescription:Lcom/scoreloop/client/android/ui/framework/ScreenDescription;

    invoke-interface {v2, v3}, Lcom/scoreloop/client/android/ui/framework/ScreenManager;->onShowedTab(Lcom/scoreloop/client/android/ui/framework/ScreenDescription;)V

    .line 88
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 92
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onCreate(Landroid/os/Bundle;)V

    .line 93
    const v0, 0x7f03003c

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/ui/framework/TabsActivity;->setContentView(I)V

    .line 94
    invoke-static {}, Lcom/scoreloop/client/android/ui/framework/ScreenManagerSingleton;->get()Lcom/scoreloop/client/android/ui/framework/ScreenManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/scoreloop/client/android/ui/framework/ScreenManager;->displayStoredDescriptionInTabs(Lcom/scoreloop/client/android/ui/framework/TabsActivityProtocol;)V

    .line 95
    return-void
.end method

.method public onCreateOptionsMenuForActivityGroup(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    .line 45
    iget-object v2, p0, Lcom/scoreloop/client/android/ui/framework/TabsActivity;->_screenDescription:Lcom/scoreloop/client/android/ui/framework/ScreenDescription;

    invoke-virtual {v2}, Lcom/scoreloop/client/android/ui/framework/ScreenDescription;->getSelectedBodyIndex()I

    move-result v1

    .line 46
    .local v1, index:I
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/framework/TabsActivity;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v2

    invoke-direct {p0, v1}, Lcom/scoreloop/client/android/ui/framework/TabsActivity;->getTabActivityIdentifier(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/LocalActivityManager;->getActivity(Ljava/lang/String;)Landroid/app/Activity;

    move-result-object v0

    .line 47
    .local v0, bodyActivity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    instance-of v2, v0, Lcom/scoreloop/client/android/ui/framework/OptionsMenuForActivityGroup;

    if-eqz v2, :cond_0

    .line 48
    check-cast v0, Lcom/scoreloop/client/android/ui/framework/OptionsMenuForActivityGroup;

    .end local v0           #bodyActivity:Landroid/app/Activity;
    invoke-interface {v0, p1}, Lcom/scoreloop/client/android/ui/framework/OptionsMenuForActivityGroup;->onCreateOptionsMenuForActivityGroup(Landroid/view/Menu;)Z

    move-result v2

    .line 50
    :goto_0
    return v2

    .restart local v0       #bodyActivity:Landroid/app/Activity;
    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 99
    const v1, 0x7f0c008c

    invoke-virtual {p0, v1}, Lcom/scoreloop/client/android/ui/framework/TabsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/scoreloop/client/android/ui/framework/TabView;

    .line 100
    .local v0, tabView:Lcom/scoreloop/client/android/ui/framework/TabView;
    invoke-virtual {v0}, Lcom/scoreloop/client/android/ui/framework/TabView;->removeAllViews()V

    .line 101
    invoke-static {}, Lcom/scoreloop/client/android/ui/framework/ScreenManagerSingleton;->get()Lcom/scoreloop/client/android/ui/framework/ScreenManager;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/scoreloop/client/android/ui/framework/ScreenManager;->displayStoredDescriptionInTabs(Lcom/scoreloop/client/android/ui/framework/TabsActivityProtocol;)V

    .line 102
    return-void
.end method

.method public onOptionsItemSelectedForActivityGroup(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    .line 65
    iget-object v2, p0, Lcom/scoreloop/client/android/ui/framework/TabsActivity;->_screenDescription:Lcom/scoreloop/client/android/ui/framework/ScreenDescription;

    invoke-virtual {v2}, Lcom/scoreloop/client/android/ui/framework/ScreenDescription;->getSelectedBodyIndex()I

    move-result v1

    .line 66
    .local v1, index:I
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/framework/TabsActivity;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v2

    invoke-direct {p0, v1}, Lcom/scoreloop/client/android/ui/framework/TabsActivity;->getTabActivityIdentifier(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/LocalActivityManager;->getActivity(Ljava/lang/String;)Landroid/app/Activity;

    move-result-object v0

    .line 67
    .local v0, bodyActivity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    instance-of v2, v0, Lcom/scoreloop/client/android/ui/framework/OptionsMenuForActivityGroup;

    if-eqz v2, :cond_0

    .line 68
    check-cast v0, Lcom/scoreloop/client/android/ui/framework/OptionsMenuForActivityGroup;

    .end local v0           #bodyActivity:Landroid/app/Activity;
    invoke-interface {v0, p1}, Lcom/scoreloop/client/android/ui/framework/OptionsMenuForActivityGroup;->onOptionsItemSelectedForActivityGroup(Landroid/view/MenuItem;)Z

    move-result v2

    .line 70
    :goto_0
    return v2

    .restart local v0       #bodyActivity:Landroid/app/Activity;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onPrepareOptionsMenuForActivityGroup(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    .line 55
    iget-object v2, p0, Lcom/scoreloop/client/android/ui/framework/TabsActivity;->_screenDescription:Lcom/scoreloop/client/android/ui/framework/ScreenDescription;

    invoke-virtual {v2}, Lcom/scoreloop/client/android/ui/framework/ScreenDescription;->getSelectedBodyIndex()I

    move-result v1

    .line 56
    .local v1, index:I
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/framework/TabsActivity;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v2

    invoke-direct {p0, v1}, Lcom/scoreloop/client/android/ui/framework/TabsActivity;->getTabActivityIdentifier(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/LocalActivityManager;->getActivity(Ljava/lang/String;)Landroid/app/Activity;

    move-result-object v0

    .line 57
    .local v0, bodyActivity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    instance-of v2, v0, Lcom/scoreloop/client/android/ui/framework/OptionsMenuForActivityGroup;

    if-eqz v2, :cond_0

    .line 58
    check-cast v0, Lcom/scoreloop/client/android/ui/framework/OptionsMenuForActivityGroup;

    .end local v0           #bodyActivity:Landroid/app/Activity;
    invoke-interface {v0, p1}, Lcom/scoreloop/client/android/ui/framework/OptionsMenuForActivityGroup;->onPrepareOptionsMenuForActivityGroup(Landroid/view/Menu;)Z

    move-result v2

    .line 60
    :goto_0
    return v2

    .restart local v0       #bodyActivity:Landroid/app/Activity;
    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public startDescription(Lcom/scoreloop/client/android/ui/framework/ScreenDescription;)V
    .locals 7
    .parameter "description"

    .prologue
    .line 106
    iput-object p1, p0, Lcom/scoreloop/client/android/ui/framework/TabsActivity;->_screenDescription:Lcom/scoreloop/client/android/ui/framework/ScreenDescription;

    .line 108
    invoke-virtual {p1}, Lcom/scoreloop/client/android/ui/framework/ScreenDescription;->getBodyDescriptions()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scoreloop/client/android/ui/framework/ActivityDescription;

    .line 109
    .local v0, bodyDescription:Lcom/scoreloop/client/android/ui/framework/ActivityDescription;
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Lcom/scoreloop/client/android/ui/framework/ActivityDescription;->setEnabledWantsClearTop(Z)V

    goto :goto_0

    .line 113
    .end local v0           #bodyDescription:Lcom/scoreloop/client/android/ui/framework/ActivityDescription;
    :cond_0
    const v6, 0x7f0c008c

    invoke-virtual {p0, v6}, Lcom/scoreloop/client/android/ui/framework/TabsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/scoreloop/client/android/ui/framework/TabView;

    .line 114
    .local v4, tabView:Lcom/scoreloop/client/android/ui/framework/TabView;
    invoke-virtual {v4, p0}, Lcom/scoreloop/client/android/ui/framework/TabView;->setOnSegmentClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    invoke-virtual {p1}, Lcom/scoreloop/client/android/ui/framework/ScreenDescription;->getBodyDescriptions()Ljava/util/List;

    move-result-object v1

    .line 117
    .local v1, descriptions:Ljava/util/List;,"Ljava/util/List<Lcom/scoreloop/client/android/ui/framework/ActivityDescription;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_1

    .line 118
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scoreloop/client/android/ui/framework/ActivityDescription;

    .line 119
    .restart local v0       #bodyDescription:Lcom/scoreloop/client/android/ui/framework/ActivityDescription;
    invoke-virtual {v0}, Lcom/scoreloop/client/android/ui/framework/ActivityDescription;->getTabId()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/scoreloop/client/android/ui/framework/TabsActivity;->getTabTextView(I)Landroid/widget/TextView;

    move-result-object v5

    .line 121
    .local v5, tv:Landroid/widget/TextView;
    invoke-virtual {v4, v5}, Lcom/scoreloop/client/android/ui/framework/TabView;->addView(Landroid/view/View;)V

    .line 117
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 123
    .end local v0           #bodyDescription:Lcom/scoreloop/client/android/ui/framework/ActivityDescription;
    .end local v5           #tv:Landroid/widget/TextView;
    :cond_1
    invoke-virtual {v4}, Lcom/scoreloop/client/android/ui/framework/TabView;->prepareUsage()V

    .line 126
    invoke-virtual {p1}, Lcom/scoreloop/client/android/ui/framework/ScreenDescription;->getSelectedBodyIndex()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/scoreloop/client/android/ui/framework/TabsActivity;->startTab(I)V

    .line 127
    return-void
.end method
