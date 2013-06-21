.class public Lcom/scoreloop/client/android/ui/framework/ScreenActivity;
.super Landroid/app/ActivityGroup;
.source "ScreenActivity.java"

# interfaces
.implements Lcom/scoreloop/client/android/ui/framework/ScreenActivityProtocol;
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final REGION_BODY:Ljava/lang/String; = "body"

.field private static final REGION_HEADER:Ljava/lang/String; = "header"

.field private static final STACK_ENTRY_REFERENCE_KEY:Ljava/lang/String; = "stackEntryReference"


# instance fields
.field private _bodyActivity:Lcom/scoreloop/client/android/ui/framework/BaseActivity;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/app/ActivityGroup;-><init>(Z)V

    .line 50
    return-void
.end method

.method private getBodyActivity()Landroid/app/Activity;
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/framework/ScreenActivity;->_bodyActivity:Lcom/scoreloop/client/android/ui/framework/BaseActivity;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/framework/ScreenActivity;->_bodyActivity:Lcom/scoreloop/client/android/ui/framework/BaseActivity;

    .line 92
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/framework/ScreenActivity;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v0

    const-string v1, "body"

    invoke-virtual {v0, v1}, Landroid/app/LocalActivityManager;->getActivity(Ljava/lang/String;)Landroid/app/Activity;

    move-result-object v0

    goto :goto_0
.end method

.method private onShortcutClick(Lcom/scoreloop/client/android/ui/framework/ShortcutView;)V
    .locals 4
    .parameter "shortcutView"

    .prologue
    .line 252
    invoke-virtual {p1}, Lcom/scoreloop/client/android/ui/framework/ShortcutView;->getSelectedSegment()I

    move-result v1

    .line 253
    .local v1, selection:I
    new-instance v0, Lcom/scoreloop/client/android/ui/framework/NavigationIntent;

    sget-object v2, Lcom/scoreloop/client/android/ui/framework/NavigationIntent$Type;->SHORTCUT:Lcom/scoreloop/client/android/ui/framework/NavigationIntent$Type;

    new-instance v3, Lcom/scoreloop/client/android/ui/framework/ScreenActivity$1;

    invoke-direct {v3, p0, v1}, Lcom/scoreloop/client/android/ui/framework/ScreenActivity$1;-><init>(Lcom/scoreloop/client/android/ui/framework/ScreenActivity;I)V

    invoke-direct {v0, v2, v3}, Lcom/scoreloop/client/android/ui/framework/NavigationIntent;-><init>(Lcom/scoreloop/client/android/ui/framework/NavigationIntent$Type;Ljava/lang/Runnable;)V

    .line 267
    .local v0, navigationIntent:Lcom/scoreloop/client/android/ui/framework/NavigationIntent;
    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/ui/framework/ScreenActivity;->isNavigationAllowed(Lcom/scoreloop/client/android/ui/framework/NavigationIntent;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 268
    iget v2, p1, Lcom/scoreloop/client/android/ui/framework/ShortcutView;->oldSelectedSegment:I

    invoke-virtual {p1, v2}, Lcom/scoreloop/client/android/ui/framework/ShortcutView;->switchToSegment(I)V

    .line 272
    :goto_0
    return-void

    .line 270
    :cond_0
    invoke-virtual {v0}, Lcom/scoreloop/client/android/ui/framework/NavigationIntent;->execute()V

    goto :goto_0
.end method


# virtual methods
.method public cleanOutSubactivities()V
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/framework/ScreenActivity;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/LocalActivityManager;->removeAllActivities()V

    .line 55
    return-void
.end method

.method protected display(Lcom/scoreloop/client/android/ui/framework/ScreenDescription;Landroid/os/Bundle;)V
    .locals 2
    .parameter "description"
    .parameter "savedInstanceState"

    .prologue
    .line 58
    if-eqz p2, :cond_0

    .line 62
    :goto_0
    return-void

    .line 61
    :cond_0
    invoke-static {}, Lcom/scoreloop/client/android/ui/framework/ScreenManagerSingleton;->get()Lcom/scoreloop/client/android/ui/framework/ScreenManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, p1, p0, v1}, Lcom/scoreloop/client/android/ui/framework/ScreenManager;->displayInScreen(Lcom/scoreloop/client/android/ui/framework/ScreenDescription;Lcom/scoreloop/client/android/ui/framework/ScreenActivityProtocol;Z)V

    goto :goto_0
.end method

.method protected displayPreviousDescription()V
    .locals 2

    .prologue
    .line 65
    invoke-static {}, Lcom/scoreloop/client/android/ui/framework/ScreenManagerSingleton;->get()Lcom/scoreloop/client/android/ui/framework/ScreenManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/scoreloop/client/android/ui/framework/ScreenManager;->displayPreviousDescription(Z)V

    .line 66
    return-void
.end method

.method protected finishDisplay()V
    .locals 1

    .prologue
    .line 69
    invoke-static {}, Lcom/scoreloop/client/android/ui/framework/ScreenManagerSingleton;->get()Lcom/scoreloop/client/android/ui/framework/ScreenManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/scoreloop/client/android/ui/framework/ScreenManager;->finishDisplay()V

    .line 70
    return-void
.end method

.method public finishFromChild(Landroid/app/Activity;)V
    .locals 3
    .parameter "child"

    .prologue
    .line 74
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 75
    .local v0, childIntent:Landroid/content/Intent;
    sget-object v1, Lcom/scoreloop/client/android/ui/framework/BaseActivity;->CHILD_RESULT_CODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 76
    sget-object v1, Lcom/scoreloop/client/android/ui/framework/BaseActivity;->CHILD_RESULT_CODE:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p0, v1, v0}, Lcom/scoreloop/client/android/ui/framework/ScreenActivity;->setResult(ILandroid/content/Intent;)V

    .line 77
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/framework/ScreenActivity;->finishDisplay()V

    .line 81
    :goto_0
    return-void

    .line 79
    :cond_0
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->finishFromChild(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 0

    .prologue
    .line 85
    return-object p0
.end method

.method public getCurrentActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/framework/ScreenActivity;->_bodyActivity:Lcom/scoreloop/client/android/ui/framework/BaseActivity;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/framework/ScreenActivity;->_bodyActivity:Lcom/scoreloop/client/android/ui/framework/BaseActivity;

    .line 100
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Landroid/app/ActivityGroup;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    goto :goto_0
.end method

.method public isNavigationAllowed(Lcom/scoreloop/client/android/ui/framework/NavigationIntent;)Z
    .locals 7
    .parameter "navigationIntent"

    .prologue
    .line 107
    const/4 v3, 0x1

    .line 108
    .local v3, navigationAllowed:Z
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/framework/ScreenActivity;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v5

    const-string v6, "header"

    invoke-virtual {v5, v6}, Landroid/app/LocalActivityManager;->getActivity(Ljava/lang/String;)Landroid/app/Activity;

    move-result-object v0

    .line 109
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    instance-of v5, v0, Lcom/scoreloop/client/android/ui/framework/BaseActivity;

    if-eqz v5, :cond_0

    move-object v2, v0

    .line 110
    check-cast v2, Lcom/scoreloop/client/android/ui/framework/BaseActivity;

    .line 111
    .local v2, headerActivity:Lcom/scoreloop/client/android/ui/framework/BaseActivity;
    invoke-virtual {v2, p1}, Lcom/scoreloop/client/android/ui/framework/BaseActivity;->isNavigationAllowed(Lcom/scoreloop/client/android/ui/framework/NavigationIntent;)Z

    move-result v5

    and-int/2addr v3, v5

    .line 113
    .end local v2           #headerActivity:Lcom/scoreloop/client/android/ui/framework/BaseActivity;
    :cond_0
    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/framework/ScreenActivity;->getBodyActivity()Landroid/app/Activity;

    move-result-object v0

    .line 114
    instance-of v5, v0, Lcom/scoreloop/client/android/ui/framework/BaseActivity;

    if-eqz v5, :cond_2

    move-object v1, v0

    .line 115
    check-cast v1, Lcom/scoreloop/client/android/ui/framework/BaseActivity;

    .line 116
    .local v1, bodyActivity:Lcom/scoreloop/client/android/ui/framework/BaseActivity;
    invoke-virtual {v1, p1}, Lcom/scoreloop/client/android/ui/framework/BaseActivity;->isNavigationAllowed(Lcom/scoreloop/client/android/ui/framework/NavigationIntent;)Z

    move-result v5

    and-int/2addr v3, v5

    .line 121
    .end local v1           #bodyActivity:Lcom/scoreloop/client/android/ui/framework/BaseActivity;
    :cond_1
    :goto_0
    return v3

    .line 117
    :cond_2
    instance-of v5, v0, Lcom/scoreloop/client/android/ui/framework/TabsActivity;

    if-eqz v5, :cond_1

    move-object v4, v0

    .line 118
    check-cast v4, Lcom/scoreloop/client/android/ui/framework/TabsActivity;

    .line 119
    .local v4, tabActivity:Lcom/scoreloop/client/android/ui/framework/TabsActivity;
    invoke-virtual {v4, p1}, Lcom/scoreloop/client/android/ui/framework/TabsActivity;->isNavigationAllowed(Lcom/scoreloop/client/android/ui/framework/NavigationIntent;)Z

    move-result v5

    and-int/2addr v3, v5

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 126
    const v0, 0x7f0c0082

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/ui/framework/ScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 127
    invoke-virtual {p0, p1}, Lcom/scoreloop/client/android/ui/framework/ScreenActivity;->onStatusCloseClick(Landroid/view/View;)V

    .line 131
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 128
    .restart local p1
    :cond_1
    const v0, 0x7f0c0085

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/ui/framework/ScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 129
    check-cast p1, Lcom/scoreloop/client/android/ui/framework/ShortcutView;

    .end local p1
    invoke-direct {p0, p1}, Lcom/scoreloop/client/android/ui/framework/ScreenActivity;->onShortcutClick(Lcom/scoreloop/client/android/ui/framework/ShortcutView;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "savedInstanceState"

    .prologue
    const/4 v9, 0x1

    .line 135
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onCreate(Landroid/os/Bundle;)V

    .line 136
    const v4, 0x7f030035

    invoke-virtual {p0, v4}, Lcom/scoreloop/client/android/ui/framework/ScreenActivity;->setContentView(I)V

    .line 138
    const v4, 0x7f0c0082

    invoke-virtual {p0, v4}, Lcom/scoreloop/client/android/ui/framework/ScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 139
    .local v0, closeButton:Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    .line 140
    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 141
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    :cond_0
    const v4, 0x7f0c0085

    invoke-virtual {p0, v4}, Lcom/scoreloop/client/android/ui/framework/ScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/scoreloop/client/android/ui/framework/ShortcutView;

    .line 145
    .local v2, shortcutView:Lcom/scoreloop/client/android/ui/framework/ShortcutView;
    invoke-virtual {v2, p0}, Lcom/scoreloop/client/android/ui/framework/ShortcutView;->setOnSegmentClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    if-nez p1, :cond_1

    .line 148
    invoke-static {}, Lcom/scoreloop/client/android/ui/framework/ScreenManagerSingleton;->get()Lcom/scoreloop/client/android/ui/framework/ScreenManager;

    move-result-object v4

    invoke-interface {v4, p0}, Lcom/scoreloop/client/android/ui/framework/ScreenManager;->displayStoredDescriptionInScreen(Lcom/scoreloop/client/android/ui/framework/ScreenActivityProtocol;)V

    .line 164
    :goto_0
    return-void

    .line 150
    :cond_1
    const-string v4, "stackEntryReference"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 151
    .local v3, stackEntryReference:I
    invoke-static {}, Lcom/scoreloop/client/android/ui/framework/ScreenManagerSingleton;->get()Lcom/scoreloop/client/android/ui/framework/ScreenManager;

    move-result-object v4

    invoke-interface {v4}, Lcom/scoreloop/client/android/ui/framework/ScreenManager;->getCurrentStackEntryReference()I

    move-result v1

    .line 152
    .local v1, currentStackEntryReference:I
    if-eq v3, v1, :cond_2

    .line 154
    const-string v4, "ScoreloopUI.Framework"

    const-string v5, "onCreate with savedInstanceState: contains wrong stackEntryReference %s and current stack depth is %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    invoke-static {}, Lcom/scoreloop/client/android/ui/framework/ScreenManagerSingleton;->get()Lcom/scoreloop/client/android/ui/framework/ScreenManager;

    move-result-object v4

    invoke-interface {v4}, Lcom/scoreloop/client/android/ui/framework/ScreenManager;->finishDisplay()V

    .line 158
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/framework/ScreenActivity;->finish()V

    goto :goto_0

    .line 160
    :cond_2
    invoke-static {}, Lcom/scoreloop/client/android/ui/framework/ScreenManagerSingleton;->get()Lcom/scoreloop/client/android/ui/framework/ScreenManager;

    move-result-object v4

    invoke-interface {v4, v3, p0}, Lcom/scoreloop/client/android/ui/framework/ScreenManager;->displayReferencedStackEntryInScreen(ILcom/scoreloop/client/android/ui/framework/ScreenActivityProtocol;)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .parameter "menu"

    .prologue
    .line 169
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v2

    .line 170
    .local v2, result:Z
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/framework/ScreenActivity;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v3

    const-string v4, "body"

    invoke-virtual {v3, v4}, Landroid/app/LocalActivityManager;->getActivity(Ljava/lang/String;)Landroid/app/Activity;

    move-result-object v0

    .line 171
    .local v0, bodyActivity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    instance-of v3, v0, Lcom/scoreloop/client/android/ui/framework/OptionsMenuForActivityGroup;

    if-eqz v3, :cond_0

    .line 172
    check-cast v0, Lcom/scoreloop/client/android/ui/framework/OptionsMenuForActivityGroup;

    .end local v0           #bodyActivity:Landroid/app/Activity;
    invoke-interface {v0, p1}, Lcom/scoreloop/client/android/ui/framework/OptionsMenuForActivityGroup;->onCreateOptionsMenuForActivityGroup(Landroid/view/Menu;)Z

    move-result v3

    or-int/2addr v2, v3

    .line 174
    :cond_0
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/framework/ScreenActivity;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v3

    const-string v4, "header"

    invoke-virtual {v3, v4}, Landroid/app/LocalActivityManager;->getActivity(Ljava/lang/String;)Landroid/app/Activity;

    move-result-object v1

    .line 175
    .local v1, headerActivity:Landroid/app/Activity;
    if-eqz v1, :cond_1

    instance-of v3, v1, Lcom/scoreloop/client/android/ui/framework/OptionsMenuForActivityGroup;

    if-eqz v3, :cond_1

    .line 176
    check-cast v1, Lcom/scoreloop/client/android/ui/framework/OptionsMenuForActivityGroup;

    .end local v1           #headerActivity:Landroid/app/Activity;
    invoke-interface {v1, p1}, Lcom/scoreloop/client/android/ui/framework/OptionsMenuForActivityGroup;->onCreateOptionsMenuForActivityGroup(Landroid/view/Menu;)Z

    move-result v3

    or-int/2addr v2, v3

    .line 178
    :cond_1
    return v2
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 183
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 184
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/framework/ScreenActivity;->displayPreviousDescription()V

    .line 185
    const/4 v0, 0x1

    .line 187
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/ActivityGroup;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    .line 193
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    .line 194
    .local v1, consumed:Z
    if-nez v1, :cond_0

    .line 195
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/framework/ScreenActivity;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v2

    const-string v3, "header"

    invoke-virtual {v2, v3}, Landroid/app/LocalActivityManager;->getActivity(Ljava/lang/String;)Landroid/app/Activity;

    move-result-object v0

    .line 196
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    instance-of v2, v0, Lcom/scoreloop/client/android/ui/framework/OptionsMenuForActivityGroup;

    if-eqz v2, :cond_0

    .line 197
    check-cast v0, Lcom/scoreloop/client/android/ui/framework/OptionsMenuForActivityGroup;

    .end local v0           #activity:Landroid/app/Activity;
    invoke-interface {v0, p1}, Lcom/scoreloop/client/android/ui/framework/OptionsMenuForActivityGroup;->onOptionsItemSelectedForActivityGroup(Landroid/view/MenuItem;)Z

    move-result v1

    .line 200
    :cond_0
    if-nez v1, :cond_1

    .line 201
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/framework/ScreenActivity;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v2

    const-string v3, "body"

    invoke-virtual {v2, v3}, Landroid/app/LocalActivityManager;->getActivity(Ljava/lang/String;)Landroid/app/Activity;

    move-result-object v0

    .line 202
    .restart local v0       #activity:Landroid/app/Activity;
    if-eqz v0, :cond_1

    instance-of v2, v0, Lcom/scoreloop/client/android/ui/framework/OptionsMenuForActivityGroup;

    if-eqz v2, :cond_1

    .line 203
    check-cast v0, Lcom/scoreloop/client/android/ui/framework/OptionsMenuForActivityGroup;

    .end local v0           #activity:Landroid/app/Activity;
    invoke-interface {v0, p1}, Lcom/scoreloop/client/android/ui/framework/OptionsMenuForActivityGroup;->onOptionsItemSelectedForActivityGroup(Landroid/view/MenuItem;)Z

    move-result v1

    .line 206
    :cond_1
    return v1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .parameter "menu"

    .prologue
    .line 212
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v2

    .line 213
    .local v2, result:Z
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/framework/ScreenActivity;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v3

    const-string v4, "header"

    invoke-virtual {v3, v4}, Landroid/app/LocalActivityManager;->getActivity(Ljava/lang/String;)Landroid/app/Activity;

    move-result-object v1

    .line 214
    .local v1, headerActivity:Landroid/app/Activity;
    if-eqz v1, :cond_0

    instance-of v3, v1, Lcom/scoreloop/client/android/ui/framework/OptionsMenuForActivityGroup;

    if-eqz v3, :cond_0

    .line 215
    check-cast v1, Lcom/scoreloop/client/android/ui/framework/OptionsMenuForActivityGroup;

    .end local v1           #headerActivity:Landroid/app/Activity;
    invoke-interface {v1, p1}, Lcom/scoreloop/client/android/ui/framework/OptionsMenuForActivityGroup;->onPrepareOptionsMenuForActivityGroup(Landroid/view/Menu;)Z

    move-result v3

    or-int/2addr v2, v3

    .line 217
    :cond_0
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/framework/ScreenActivity;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v3

    const-string v4, "body"

    invoke-virtual {v3, v4}, Landroid/app/LocalActivityManager;->getActivity(Ljava/lang/String;)Landroid/app/Activity;

    move-result-object v0

    .line 218
    .local v0, bodyActivity:Landroid/app/Activity;
    if-eqz v0, :cond_1

    instance-of v3, v0, Lcom/scoreloop/client/android/ui/framework/OptionsMenuForActivityGroup;

    if-eqz v3, :cond_1

    .line 219
    check-cast v0, Lcom/scoreloop/client/android/ui/framework/OptionsMenuForActivityGroup;

    .end local v0           #bodyActivity:Landroid/app/Activity;
    invoke-interface {v0, p1}, Lcom/scoreloop/client/android/ui/framework/OptionsMenuForActivityGroup;->onPrepareOptionsMenuForActivityGroup(Landroid/view/Menu;)Z

    move-result v3

    or-int/2addr v2, v3

    .line 221
    :cond_1
    invoke-static {}, Lcom/scoreloop/client/android/ui/framework/ScreenManagerSingleton;->get()Lcom/scoreloop/client/android/ui/framework/ScreenManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/scoreloop/client/android/ui/framework/ScreenManager;->onWillShowOptionsMenu()V

    .line 222
    return v2
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 227
    invoke-super {p0}, Landroid/app/ActivityGroup;->onResume()V

    .line 228
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/framework/ScreenActivity;->_bodyActivity:Lcom/scoreloop/client/android/ui/framework/BaseActivity;

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/framework/ScreenActivity;->_bodyActivity:Lcom/scoreloop/client/android/ui/framework/BaseActivity;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/ui/framework/BaseActivity;->onResume()V

    .line 231
    :cond_0
    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 237
    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/framework/ScreenActivity;->getBodyActivity()Landroid/app/Activity;

    move-result-object v0

    .line 238
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->onRetainNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 241
    .end local v0           #activity:Landroid/app/Activity;
    :goto_0
    return-object v0

    .restart local v0       #activity:Landroid/app/Activity;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 246
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 247
    invoke-static {}, Lcom/scoreloop/client/android/ui/framework/ScreenManagerSingleton;->get()Lcom/scoreloop/client/android/ui/framework/ScreenManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/scoreloop/client/android/ui/framework/ScreenManager;->getCurrentStackEntryReference()I

    move-result v0

    .line 248
    .local v0, stackEntryReference:I
    const-string v1, "stackEntryReference"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 249
    return-void
.end method

.method protected onStatusCloseClick(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 275
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/framework/ScreenActivity;->finishDisplay()V

    .line 276
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 280
    invoke-super {p0}, Landroid/app/ActivityGroup;->onStop()V

    .line 281
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/framework/ScreenActivity;->_bodyActivity:Lcom/scoreloop/client/android/ui/framework/BaseActivity;

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/framework/ScreenActivity;->_bodyActivity:Lcom/scoreloop/client/android/ui/framework/BaseActivity;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/ui/framework/BaseActivity;->onStop()V

    .line 284
    :cond_0
    return-void
.end method

.method public setShortcuts(Lcom/scoreloop/client/android/ui/framework/ScreenDescription;)V
    .locals 3
    .parameter "description"

    .prologue
    .line 288
    const v2, 0x7f0c0085

    invoke-virtual {p0, v2}, Lcom/scoreloop/client/android/ui/framework/ScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/scoreloop/client/android/ui/framework/ShortcutView;

    .line 289
    .local v1, shortcutView:Lcom/scoreloop/client/android/ui/framework/ShortcutView;
    invoke-virtual {p1}, Lcom/scoreloop/client/android/ui/framework/ScreenDescription;->getShortcutDescriptions()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lcom/scoreloop/client/android/ui/framework/ShortcutView;->setDescriptions(Landroid/app/Activity;Ljava/util/List;)V

    .line 291
    invoke-virtual {p1}, Lcom/scoreloop/client/android/ui/framework/ScreenDescription;->getShortcutSelectionIndex()I

    move-result v0

    .line 292
    .local v0, index:I
    invoke-virtual {v1, v0}, Lcom/scoreloop/client/android/ui/framework/ShortcutView;->switchToSegment(I)V

    .line 293
    return-void
.end method

.method public startBody(Lcom/scoreloop/client/android/ui/framework/ActivityDescription;I)V
    .locals 8
    .parameter "description"
    .parameter "anim"

    .prologue
    const v7, 0x7f0c0084

    const/4 v6, -0x1

    .line 297
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/framework/ScreenActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 298
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_1

    instance-of v5, v0, Lcom/scoreloop/client/android/ui/framework/BaseActivity;

    if-eqz v5, :cond_1

    .line 299
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 300
    .local v1, paneView:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 301
    .local v2, parent:Landroid/view/ViewParent;
    if-eqz v2, :cond_0

    instance-of v5, v2, Landroid/view/ViewGroup;

    if-eqz v5, :cond_0

    move-object v4, v2

    .line 302
    check-cast v4, Landroid/view/ViewGroup;

    .line 303
    .local v4, viewGroup:Landroid/view/ViewGroup;
    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 305
    .end local v4           #viewGroup:Landroid/view/ViewGroup;
    :cond_0
    invoke-virtual {p0, v7}, Lcom/scoreloop/client/android/ui/framework/ScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 306
    .local v3, region:Landroid/view/ViewGroup;
    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v5, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 307
    check-cast v0, Lcom/scoreloop/client/android/ui/framework/BaseActivity;

    .end local v0           #activity:Landroid/app/Activity;
    iput-object v0, p0, Lcom/scoreloop/client/android/ui/framework/ScreenActivity;->_bodyActivity:Lcom/scoreloop/client/android/ui/framework/BaseActivity;

    .line 312
    .end local v1           #paneView:Landroid/view/View;
    .end local v2           #parent:Landroid/view/ViewParent;
    .end local v3           #region:Landroid/view/ViewGroup;
    :goto_0
    return-void

    .line 310
    .restart local v0       #activity:Landroid/app/Activity;
    :cond_1
    invoke-virtual {p1}, Lcom/scoreloop/client/android/ui/framework/ActivityDescription;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "body"

    invoke-static {p0, v5, v6, v7, p2}, Lcom/scoreloop/client/android/ui/framework/ActivityHelper;->startLocalActivity(Landroid/app/ActivityGroup;Landroid/content/Intent;Ljava/lang/String;II)V

    .line 311
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/scoreloop/client/android/ui/framework/ScreenActivity;->_bodyActivity:Lcom/scoreloop/client/android/ui/framework/BaseActivity;

    goto :goto_0
.end method

.method public startEmptyBody()V
    .locals 2

    .prologue
    .line 316
    const v1, 0x7f0c0084

    invoke-virtual {p0, v1}, Lcom/scoreloop/client/android/ui/framework/ScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 317
    .local v0, region:Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 318
    return-void
.end method

.method public startEmptyHeader()V
    .locals 2

    .prologue
    .line 322
    const v1, 0x7f0c0083

    invoke-virtual {p0, v1}, Lcom/scoreloop/client/android/ui/framework/ScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 323
    .local v0, region:Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 324
    return-void
.end method

.method public startHeader(Lcom/scoreloop/client/android/ui/framework/ActivityDescription;I)V
    .locals 3
    .parameter "description"
    .parameter "anim"

    .prologue
    .line 328
    invoke-virtual {p1}, Lcom/scoreloop/client/android/ui/framework/ActivityDescription;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "header"

    const v2, 0x7f0c0083

    invoke-static {p0, v0, v1, v2, p2}, Lcom/scoreloop/client/android/ui/framework/ActivityHelper;->startLocalActivity(Landroid/app/ActivityGroup;Landroid/content/Intent;Ljava/lang/String;II)V

    .line 329
    return-void
.end method

.method public startNewScreen()V
    .locals 2

    .prologue
    .line 333
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/scoreloop/client/android/ui/framework/ScreenActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/ui/framework/ScreenActivity;->startActivity(Landroid/content/Intent;)V

    .line 334
    return-void
.end method

.method public startTabBody(Lcom/scoreloop/client/android/ui/framework/ScreenDescription;I)V
    .locals 3
    .parameter "description"
    .parameter "anim"

    .prologue
    .line 338
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/scoreloop/client/android/ui/framework/TabsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 339
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 340
    const-string v1, "body"

    const v2, 0x7f0c0084

    invoke-static {p0, v0, v1, v2, p2}, Lcom/scoreloop/client/android/ui/framework/ActivityHelper;->startLocalActivity(Landroid/app/ActivityGroup;Landroid/content/Intent;Ljava/lang/String;II)V

    .line 341
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/scoreloop/client/android/ui/framework/ScreenActivity;->_bodyActivity:Lcom/scoreloop/client/android/ui/framework/BaseActivity;

    .line 342
    return-void
.end method
