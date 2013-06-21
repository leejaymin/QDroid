.class public Lti/modules/titanium/ui/widget/TiUITabGroup;
.super Lorg/appcelerator/titanium/view/TiUIView;
.source "TiUITabGroup.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field private static final LCAT:Ljava/lang/String; = "TiUITabGroup"


# instance fields
.field private addingTab:Z

.field private lastTabId:Ljava/lang/String;

.field private tabChangeEventData:Lorg/appcelerator/kroll/KrollDict;

.field private tabContent:Landroid/widget/FrameLayout;

.field private tabHost:Landroid/widget/TabHost;

.field private tabWidget:Landroid/widget/TabWidget;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    sget-boolean v0, Lorg/appcelerator/titanium/util/TiConfig;->LOGD:Z

    sput-boolean v0, Lti/modules/titanium/ui/widget/TiUITabGroup;->DBG:Z

    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;Lti/modules/titanium/ui/TiTabActivity;)V
    .locals 8
    .parameter "proxy"
    .parameter "activity"

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    const-string v7, "backgroundColor"

    .line 48
    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 49
    new-instance v1, Landroid/widget/TabHost;

    invoke-direct {v1, p2}, Landroid/widget/TabHost;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lti/modules/titanium/ui/widget/TiUITabGroup;->tabHost:Landroid/widget/TabHost;

    .line 50
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUITabGroup;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v1, p0}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 52
    new-instance v1, Landroid/widget/TabWidget;

    invoke-virtual {p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TabWidget;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lti/modules/titanium/ui/widget/TiUITabGroup;->tabWidget:Landroid/widget/TabWidget;

    .line 53
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUITabGroup;->tabWidget:Landroid/widget/TabWidget;

    const v2, 0x1020013

    invoke-virtual {v1, v2}, Landroid/widget/TabWidget;->setId(I)V

    .line 55
    new-instance v1, Lti/modules/titanium/ui/widget/TiUITabGroup$1;

    invoke-virtual {p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lti/modules/titanium/ui/widget/TiUITabGroup$1;-><init>(Lti/modules/titanium/ui/widget/TiUITabGroup;Landroid/content/Context;)V

    iput-object v1, p0, Lti/modules/titanium/ui/widget/TiUITabGroup;->tabContent:Landroid/widget/FrameLayout;

    .line 63
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUITabGroup;->tabContent:Landroid/widget/FrameLayout;

    const v2, 0x1020011

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setId(I)V

    .line 65
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUITabGroup;->tabHost:Landroid/widget/TabHost;

    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUITabGroup;->tabWidget:Landroid/widget/TabWidget;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/TabHost;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 67
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUITabGroup;->tabHost:Landroid/widget/TabHost;

    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUITabGroup;->tabContent:Landroid/widget/FrameLayout;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/TabHost;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 70
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUITabGroup;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {p2}, Lti/modules/titanium/ui/TiTabActivity;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->setup(Landroid/app/LocalActivityManager;)V

    .line 72
    const-string v1, "backgroundColor"

    invoke-virtual {p1, v7}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 73
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUITabGroup;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperties()Lorg/appcelerator/kroll/KrollDict;

    move-result-object v2

    const-string v3, "backgroundColor"

    invoke-static {v2, v7}, Lorg/appcelerator/titanium/util/TiConvert;->toColor(Lorg/appcelerator/kroll/KrollDict;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->setBackgroundColor(I)V

    .line 78
    :goto_0
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUITabGroup;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {p0, v1}, Lti/modules/titanium/ui/widget/TiUITabGroup;->setNativeView(Landroid/view/View;)V

    .line 79
    new-instance v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    invoke-direct {v0}, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;-><init>()V

    .line 80
    .local v0, params:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;
    iput-boolean v6, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->autoFillsHeight:Z

    .line 81
    iput-boolean v6, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->autoFillsWidth:Z

    .line 82
    invoke-virtual {p2}, Lti/modules/titanium/ui/TiTabActivity;->getLayout()Lorg/appcelerator/titanium/view/TiCompositeLayout;

    move-result-object v1

    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUITabGroup;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v1, v2, v0}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 84
    const/4 v1, 0x0

    iput-object v1, p0, Lti/modules/titanium/ui/widget/TiUITabGroup;->lastTabId:Ljava/lang/String;

    .line 85
    return-void

    .line 75
    .end local v0           #params:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;
    :cond_0
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUITabGroup;->tabHost:Landroid/widget/TabHost;

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const-string v3, "#ff1a1a1a"

    invoke-static {v3}, Lorg/appcelerator/titanium/util/TiConvert;->toColor(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method static synthetic access$000(Lti/modules/titanium/ui/widget/TiUITabGroup;)Landroid/widget/TabWidget;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUITabGroup;->tabWidget:Landroid/widget/TabWidget;

    return-object v0
.end method

.method static synthetic access$100(Lti/modules/titanium/ui/widget/TiUITabGroup;)Landroid/widget/FrameLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUITabGroup;->tabContent:Landroid/widget/FrameLayout;

    return-object v0
.end method


# virtual methods
.method public addTab(Landroid/widget/TabHost$TabSpec;)V
    .locals 1
    .parameter "tab"

    .prologue
    .line 94
    const/4 v0, 0x1

    iput-boolean v0, p0, Lti/modules/titanium/ui/widget/TiUITabGroup;->addingTab:Z

    .line 95
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUITabGroup;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, p1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 96
    const/4 v0, 0x0

    iput-boolean v0, p0, Lti/modules/titanium/ui/widget/TiUITabGroup;->addingTab:Z

    .line 97
    return-void
.end method

.method public changeActiveTab(Ljava/lang/Object;)V
    .locals 8
    .parameter "t"

    .prologue
    const-string v7, "TiUITabGroup"

    .line 148
    if-eqz p1, :cond_0

    .line 149
    const/4 v1, 0x0

    .line 150
    .local v1, index:Ljava/lang/Integer;
    instance-of v5, p1, Ljava/lang/Number;

    if-eqz v5, :cond_2

    .line 151
    invoke-static {p1}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 153
    iget-object v5, p0, Lti/modules/titanium/ui/widget/TiUITabGroup;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v5}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v2

    .line 154
    .local v2, len:I
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-lt v5, v2, :cond_1

    .line 156
    const-string v5, "TiUITabGroup"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Index out of bounds. Attempt to set active tab to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ". There are "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " tabs."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Lorg/appcelerator/titanium/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    const/4 v1, 0x0

    .line 171
    .end local v1           #index:Ljava/lang/Integer;
    .end local v2           #len:I
    :cond_0
    :goto_0
    return-void

    .line 159
    .restart local v1       #index:Ljava/lang/Integer;
    .restart local v2       #len:I
    :cond_1
    iget-object v5, p0, Lti/modules/titanium/ui/widget/TiUITabGroup;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TabHost;->setCurrentTab(I)V

    goto :goto_0

    .line 161
    .end local v2           #len:I
    :cond_2
    instance-of v5, p1, Lti/modules/titanium/ui/TabProxy;

    if-eqz v5, :cond_3

    .line 162
    move-object v0, p1

    check-cast v0, Lti/modules/titanium/ui/TabProxy;

    move-object v3, v0

    .line 163
    .local v3, tab:Lti/modules/titanium/ui/TabProxy;
    const-string v5, "tag"

    invoke-virtual {v3, v5}, Lti/modules/titanium/ui/TabProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 164
    .local v4, tag:Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 165
    iget-object v5, p0, Lti/modules/titanium/ui/widget/TiUITabGroup;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v5, v4}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    goto :goto_0

    .line 168
    .end local v3           #tab:Lti/modules/titanium/ui/TabProxy;
    .end local v4           #tag:Ljava/lang/String;
    :cond_3
    const-string v5, "TiUITabGroup"

    const-string v5, "Attempt to set active tab using a non-supported argument. Ignoring"

    invoke-static {v7, v5}, Lorg/appcelerator/titanium/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getActiveTab()I
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUITabGroup;->tabHost:Landroid/widget/TabHost;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUITabGroup;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v0

    .line 178
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method protected getFocusEventObject(Z)Lorg/appcelerator/kroll/KrollDict;
    .locals 4
    .parameter "hasFocus"

    .prologue
    .line 109
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUITabGroup;->tabChangeEventData:Lorg/appcelerator/kroll/KrollDict;

    if-nez v1, :cond_0

    .line 110
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUITabGroup;->getNativeView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TabHost;

    .line 111
    .local v0, th:Landroid/widget/TabHost;
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUITabGroup;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    check-cast v1, Lti/modules/titanium/ui/TabGroupProxy;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiUITabGroup;->lastTabId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lti/modules/titanium/ui/TabGroupProxy;->buildFocusEvent(Ljava/lang/String;Ljava/lang/String;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v1

    .line 113
    .end local v0           #th:Landroid/widget/TabHost;
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUITabGroup;->tabChangeEventData:Lorg/appcelerator/kroll/KrollDict;

    goto :goto_0
.end method

.method public newTab(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;
    .locals 1
    .parameter "id"

    .prologue
    .line 89
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUITabGroup;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, p1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    return-object v0
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 122
    return-void
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .locals 5
    .parameter "id"

    .prologue
    .line 127
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUITabGroup;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    check-cast v0, Lti/modules/titanium/ui/TabGroupProxy;

    .line 128
    .local v0, tabGroupProxy:Lti/modules/titanium/ui/TabGroupProxy;
    sget-boolean v1, Lti/modules/titanium/ui/widget/TiUITabGroup;->DBG:Z

    if-eqz v1, :cond_0

    .line 129
    const-string v1, "TiUITabGroup"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tab change from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiUITabGroup;->lastTabId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :cond_0
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUITabGroup;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v2, "activeTab"

    invoke-virtual {v0}, Lti/modules/titanium/ui/TabGroupProxy;->getTabList()Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lti/modules/titanium/ui/widget/TiUITabGroup;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v4}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 134
    iget-boolean v1, p0, Lti/modules/titanium/ui/widget/TiUITabGroup;->addingTab:Z

    if-nez v1, :cond_2

    .line 135
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUITabGroup;->tabChangeEventData:Lorg/appcelerator/kroll/KrollDict;

    if-eqz v1, :cond_1

    .line 136
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUITabGroup;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v2, "blur"

    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiUITabGroup;->tabChangeEventData:Lorg/appcelerator/kroll/KrollDict;

    invoke-virtual {v1, v2, v3}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->fireEvent(Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)Z

    .line 139
    :cond_1
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUITabGroup;->lastTabId:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lti/modules/titanium/ui/TabGroupProxy;->buildFocusEvent(Ljava/lang/String;Ljava/lang/String;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v1

    iput-object v1, p0, Lti/modules/titanium/ui/widget/TiUITabGroup;->tabChangeEventData:Lorg/appcelerator/kroll/KrollDict;

    .line 140
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUITabGroup;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v2, "focus"

    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiUITabGroup;->tabChangeEventData:Lorg/appcelerator/kroll/KrollDict;

    invoke-virtual {v1, v2, v3}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->fireEvent(Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)Z

    .line 143
    :cond_2
    iput-object p1, p0, Lti/modules/titanium/ui/widget/TiUITabGroup;->lastTabId:Ljava/lang/String;

    .line 144
    return-void
.end method

.method public propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V
    .locals 1
    .parameter "key"
    .parameter "oldValue"
    .parameter "newValue"
    .parameter "proxy"

    .prologue
    .line 185
    const-string v0, "activeTab"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    invoke-virtual {p0, p3}, Lti/modules/titanium/ui/widget/TiUITabGroup;->changeActiveTab(Ljava/lang/Object;)V

    .line 190
    :goto_0
    return-void

    .line 188
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lorg/appcelerator/titanium/view/TiUIView;->propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V

    goto :goto_0
.end method

.method public setActiveTab(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 101
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUITabGroup;->tabHost:Landroid/widget/TabHost;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUITabGroup;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, p1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 104
    :cond_0
    return-void
.end method
