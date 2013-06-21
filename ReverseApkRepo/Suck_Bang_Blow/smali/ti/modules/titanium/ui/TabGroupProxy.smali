.class public Lti/modules/titanium/ui/TabGroupProxy;
.super Lorg/appcelerator/titanium/proxy/TiWindowProxy;
.source "TabGroupProxy.java"


# static fields
.field private static DBG:Z = false

.field private static final LCAT:Ljava/lang/String; = "TabGroupProxy"

.field private static final MSG_ADD_TAB:I = 0x834

.field private static final MSG_FINISH_OPEN:I = 0x836

.field private static final MSG_FIRST_ID:I = 0x7d0

.field protected static final MSG_LAST_ID:I = 0xbb7

.field private static final MSG_REMOVE_TAB:I = 0x835


# instance fields
.field initialActiveTab:Ljava/lang/Object;

.field private tabs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lti/modules/titanium/ui/TabProxy;",
            ">;"
        }
    .end annotation
.end field

.field private weakActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lti/modules/titanium/ui/TiTabActivity;",
            ">;"
        }
    .end annotation
.end field

.field windowId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    sget-boolean v0, Lorg/appcelerator/titanium/util/TiConfig;->LOGD:Z

    sput-boolean v0, Lti/modules/titanium/ui/TabGroupProxy;->DBG:Z

    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 1
    .parameter "tiContext"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;-><init>(Lorg/appcelerator/titanium/TiContext;)V

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lti/modules/titanium/ui/TabGroupProxy;->initialActiveTab:Ljava/lang/Object;

    .line 56
    return-void
.end method

.method private addTabToGroup(Lti/modules/titanium/ui/widget/TiUITabGroup;Lti/modules/titanium/ui/TabProxy;)V
    .locals 12
    .parameter "tg"
    .parameter "tab"

    .prologue
    .line 156
    iget-object v10, p0, Lti/modules/titanium/ui/TabGroupProxy;->weakActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v10}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lti/modules/titanium/ui/TiTabActivity;

    .line 157
    .local v8, tta:Lti/modules/titanium/ui/TiTabActivity;
    if-nez v8, :cond_0

    .line 158
    sget-boolean v10, Lti/modules/titanium/ui/TabGroupProxy;->DBG:Z

    if-eqz v10, :cond_0

    .line 159
    const-string v10, "TabGroupProxy"

    const-string v11, "Could not add tab because tab activity no longer exists"

    invoke-static {v10, v11}, Lorg/appcelerator/titanium/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :cond_0
    const-string v10, "title"

    invoke-virtual {p2, v10}, Lti/modules/titanium/ui/TabProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 163
    .local v6, title:Ljava/lang/String;
    const-string v10, "icon"

    invoke-virtual {p2, v10}, Lti/modules/titanium/ui/TabProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 164
    .local v1, icon:Ljava/lang/String;
    const-string v10, "tag"

    invoke-virtual {p2, v10}, Lti/modules/titanium/ui/TabProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 166
    .local v4, tag:Ljava/lang/String;
    if-nez v6, :cond_1

    .line 167
    const-string v6, ""

    .line 170
    :cond_1
    invoke-virtual {p2, p0}, Lti/modules/titanium/ui/TabProxy;->setTabGroup(Lti/modules/titanium/ui/TabGroupProxy;)V

    .line 171
    const-string v10, "window"

    invoke-virtual {p2, v10}, Lti/modules/titanium/ui/TabProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lti/modules/titanium/ui/WindowProxy;

    .line 172
    .local v9, vp:Lti/modules/titanium/ui/WindowProxy;
    invoke-virtual {v9, p0}, Lti/modules/titanium/ui/WindowProxy;->setTabGroupProxy(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 173
    invoke-virtual {v9, p2}, Lti/modules/titanium/ui/WindowProxy;->setTabProxy(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 175
    if-eqz v4, :cond_2

    if-eqz v9, :cond_2

    .line 176
    invoke-virtual {p1, v4}, Lti/modules/titanium/ui/widget/TiUITabGroup;->newTab(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v7

    .line 177
    .local v7, tspec:Landroid/widget/TabHost$TabSpec;
    if-nez v1, :cond_3

    .line 178
    invoke-virtual {v7, v6}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    .line 186
    :goto_0
    new-instance v2, Landroid/content/Intent;

    const-class v10, Lorg/appcelerator/titanium/TiActivity;

    invoke-direct {v2, v8, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 187
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {v9, v2}, Lti/modules/titanium/ui/WindowProxy;->fillIntentForTab(Landroid/content/Intent;)V

    .line 189
    invoke-virtual {v7, v2}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    .line 191
    invoke-virtual {p1, v7}, Lti/modules/titanium/ui/widget/TiUITabGroup;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 193
    .end local v2           #intent:Landroid/content/Intent;
    .end local v7           #tspec:Landroid/widget/TabHost$TabSpec;
    :cond_2
    return-void

    .line 180
    .restart local v7       #tspec:Landroid/widget/TabHost$TabSpec;
    :cond_3
    invoke-virtual {p0}, Lti/modules/titanium/ui/TabGroupProxy;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11, v1}, Lorg/appcelerator/titanium/TiContext;->resolveUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 181
    .local v3, path:Ljava/lang/String;
    new-instance v5, Lorg/appcelerator/titanium/util/TiFileHelper;

    invoke-virtual {p0}, Lti/modules/titanium/ui/TabGroupProxy;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v10

    invoke-virtual {v10}, Lorg/appcelerator/titanium/TiContext;->getRootActivity()Lorg/appcelerator/titanium/TiRootActivity;

    move-result-object v10

    invoke-direct {v5, v10}, Lorg/appcelerator/titanium/util/TiFileHelper;-><init>(Landroid/content/Context;)V

    .line 182
    .local v5, tfh:Lorg/appcelerator/titanium/util/TiFileHelper;
    invoke-virtual {p0}, Lti/modules/titanium/ui/TabGroupProxy;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v5, v10, v3, v11}, Lorg/appcelerator/titanium/util/TiFileHelper;->loadDrawable(Lorg/appcelerator/titanium/TiContext;Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 183
    .local v0, d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v7, v6, v0}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    goto :goto_0
.end method

.method private fillIntent(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 7
    .parameter "activity"
    .parameter "intent"

    .prologue
    const-string v6, "finishRoot"

    const-string v5, "exitOnClose"

    const-string v4, "navBarHidden"

    const-string v3, "fullscreen"

    .line 344
    invoke-virtual {p0}, Lti/modules/titanium/ui/TabGroupProxy;->getProperties()Lorg/appcelerator/kroll/KrollDict;

    move-result-object v1

    .line 346
    .local v1, props:Lorg/appcelerator/kroll/KrollDict;
    if-eqz v1, :cond_1

    .line 347
    const-string v2, "fullscreen"

    invoke-virtual {v1, v3}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 348
    const-string v2, "fullscreen"

    const-string v2, "fullscreen"

    invoke-static {v1, v3}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Lorg/appcelerator/kroll/KrollDict;Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 350
    :cond_0
    const-string v2, "navBarHidden"

    invoke-virtual {v1, v4}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 351
    const-string v2, "navBarHidden"

    const-string v2, "navBarHidden"

    invoke-static {v1, v4}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Lorg/appcelerator/kroll/KrollDict;Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {p2, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 355
    :cond_1
    if-eqz v1, :cond_2

    const-string v2, "exitOnClose"

    invoke-virtual {v1, v5}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 356
    const-string v2, "finishRoot"

    const-string v2, "exitOnClose"

    invoke-static {v1, v5}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Lorg/appcelerator/kroll/KrollDict;Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {p2, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 361
    :goto_0
    new-instance v0, Landroid/os/Messenger;

    invoke-virtual {p0}, Lti/modules/titanium/ui/TabGroupProxy;->getUIHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    .line 362
    .local v0, messenger:Landroid/os/Messenger;
    const-string v2, "messenger"

    invoke-virtual {p2, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 363
    const-string v2, "messageId"

    const/16 v3, 0x836

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 364
    return-void

    .line 358
    .end local v0           #messenger:Landroid/os/Messenger;
    :cond_2
    const-string v2, "finishRoot"

    invoke-virtual {p1}, Landroid/app/Activity;->isTaskRoot()Z

    move-result v2

    invoke-virtual {p2, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0
.end method

.method private handleAddTab(Lti/modules/titanium/ui/TabProxy;)V
    .locals 6
    .parameter "tab"

    .prologue
    const-string v5, "tag"

    .line 126
    const-string v4, "tag"

    invoke-virtual {p1, v5}, Lti/modules/titanium/ui/TabProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 127
    .local v1, tag:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 128
    const-string v4, "title"

    invoke-virtual {p1, v4}, Lti/modules/titanium/ui/TabProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 129
    .local v3, title:Ljava/lang/String;
    if-nez v3, :cond_4

    .line 130
    const-string v4, "icon"

    invoke-virtual {p1, v4}, Lti/modules/titanium/ui/TabProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 131
    .local v0, icon:Ljava/lang/String;
    if-nez v0, :cond_3

    .line 132
    invoke-virtual {p1}, Lti/modules/titanium/ui/TabProxy;->toString()Ljava/lang/String;

    move-result-object v1

    .line 140
    .end local v0           #icon:Ljava/lang/String;
    :goto_0
    const-string v4, "tag"

    const/4 v4, 0x0

    invoke-virtual {p1, v5, v1, v4}, Lti/modules/titanium/ui/TabProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 143
    .end local v3           #title:Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lti/modules/titanium/ui/TabGroupProxy;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 144
    iput-object p1, p0, Lti/modules/titanium/ui/TabGroupProxy;->initialActiveTab:Ljava/lang/Object;

    .line 146
    :cond_1
    iget-object v4, p0, Lti/modules/titanium/ui/TabGroupProxy;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    invoke-virtual {p0}, Lti/modules/titanium/ui/TabGroupProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 149
    invoke-virtual {p0}, Lti/modules/titanium/ui/TabGroupProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v2

    check-cast v2, Lti/modules/titanium/ui/widget/TiUITabGroup;

    .line 150
    .local v2, tg:Lti/modules/titanium/ui/widget/TiUITabGroup;
    invoke-direct {p0, v2, p1}, Lti/modules/titanium/ui/TabGroupProxy;->addTabToGroup(Lti/modules/titanium/ui/widget/TiUITabGroup;Lti/modules/titanium/ui/TabProxy;)V

    .line 152
    .end local v2           #tg:Lti/modules/titanium/ui/widget/TiUITabGroup;
    :cond_2
    return-void

    .line 134
    .restart local v0       #icon:Ljava/lang/String;
    .restart local v3       #title:Ljava/lang/String;
    :cond_3
    move-object v1, v0

    goto :goto_0

    .line 137
    .end local v0           #icon:Ljava/lang/String;
    :cond_4
    move-object v1, v3

    goto :goto_0
.end method

.method private indexForId(Ljava/lang/String;)I
    .locals 6
    .parameter "id"

    .prologue
    .line 328
    const/4 v2, -0x1

    .line 330
    .local v2, index:I
    const/4 v0, 0x0

    .line 331
    .local v0, i:I
    iget-object v5, p0, Lti/modules/titanium/ui/TabGroupProxy;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lti/modules/titanium/ui/TabProxy;

    .line 332
    .local v3, t:Lti/modules/titanium/ui/TabProxy;
    const-string v5, "tag"

    invoke-virtual {v3, v5}, Lti/modules/titanium/ui/TabProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 333
    .local v4, tag:Ljava/lang/String;
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 334
    move v2, v0

    .line 339
    .end local v3           #t:Lti/modules/titanium/ui/TabProxy;
    .end local v4           #tag:Ljava/lang/String;
    :cond_0
    return v2

    .line 337
    .restart local v3       #t:Lti/modules/titanium/ui/TabProxy;
    .restart local v4       #tag:Ljava/lang/String;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 338
    goto :goto_0
.end method


# virtual methods
.method public addTab(Lti/modules/titanium/ui/TabProxy;)V
    .locals 1
    .parameter "tab"

    .prologue
    .line 113
    iget-object v0, p0, Lti/modules/titanium/ui/TabGroupProxy;->tabs:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lti/modules/titanium/ui/TabGroupProxy;->tabs:Ljava/util/ArrayList;

    .line 117
    :cond_0
    invoke-virtual {p0}, Lti/modules/titanium/ui/TabGroupProxy;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiContext;->isUIThread()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 118
    invoke-direct {p0, p1}, Lti/modules/titanium/ui/TabGroupProxy;->handleAddTab(Lti/modules/titanium/ui/TabProxy;)V

    .line 122
    :goto_0
    return-void

    .line 121
    :cond_1
    const/16 v0, 0x834

    invoke-virtual {p0, v0, p1}, Lti/modules/titanium/ui/TabGroupProxy;->sendBlockingUiMessage(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public buildFocusEvent(II)Lorg/appcelerator/kroll/KrollDict;
    .locals 6
    .parameter "toIndex"
    .parameter "fromIndex"

    .prologue
    const/4 v4, -0x1

    const-string v5, "previousTab"

    .line 307
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 309
    .local v0, e:Lorg/appcelerator/kroll/KrollDict;
    const-string v2, "index"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    const-string v2, "previousIndex"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    if-eq p2, v4, :cond_1

    .line 313
    const-string v2, "previousTab"

    iget-object v2, p0, Lti/modules/titanium/ui/TabGroupProxy;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v5, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    :goto_0
    if-eq p1, v4, :cond_0

    .line 321
    const-string v2, "tab"

    iget-object v3, p0, Lti/modules/titanium/ui/TabGroupProxy;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    :cond_0
    return-object v0

    .line 315
    :cond_1
    new-instance v1, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v1}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 316
    .local v1, fakeTab:Lorg/appcelerator/kroll/KrollDict;
    const-string v2, "title"

    const-string v3, "no tab"

    invoke-virtual {v1, v2, v3}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    const-string v2, "previousTab"

    invoke-virtual {v0, v5, v1}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public buildFocusEvent(Ljava/lang/String;Ljava/lang/String;)Lorg/appcelerator/kroll/KrollDict;
    .locals 3
    .parameter "to"
    .parameter "from"

    .prologue
    .line 300
    invoke-direct {p0, p1}, Lti/modules/titanium/ui/TabGroupProxy;->indexForId(Ljava/lang/String;)I

    move-result v1

    .line 301
    .local v1, toIndex:I
    invoke-direct {p0, p2}, Lti/modules/titanium/ui/TabGroupProxy;->indexForId(Ljava/lang/String;)I

    move-result v0

    .line 302
    .local v0, fromIndex:I
    invoke-virtual {p0, v1, v0}, Lti/modules/titanium/ui/TabGroupProxy;->buildFocusEvent(II)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v2

    return-object v2
.end method

.method public getActiveTab()Lti/modules/titanium/ui/TabProxy;
    .locals 8

    .prologue
    const-string v7, "TabGroupProxy"

    .line 213
    const/4 v0, 0x0

    .line 215
    .local v0, activeTab:Lti/modules/titanium/ui/TabProxy;
    invoke-virtual {p0}, Lti/modules/titanium/ui/TabGroupProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 216
    invoke-virtual {p0}, Lti/modules/titanium/ui/TabGroupProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v4

    check-cast v4, Lti/modules/titanium/ui/widget/TiUITabGroup;

    .line 217
    .local v4, tg:Lti/modules/titanium/ui/widget/TiUITabGroup;
    invoke-virtual {v4}, Lti/modules/titanium/ui/widget/TiUITabGroup;->getActiveTab()I

    move-result v1

    .line 219
    .local v1, activeTabIndex:I
    if-gez v1, :cond_1

    .line 220
    const-string v5, "TabGroupProxy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unable to get active tab, invalid index returned: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Lorg/appcelerator/titanium/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :cond_0
    :goto_0
    iget-object v5, p0, Lti/modules/titanium/ui/TabGroupProxy;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #activeTab:Lti/modules/titanium/ui/TabProxy;
    check-cast v0, Lti/modules/titanium/ui/TabProxy;

    .line 240
    .end local v1           #activeTabIndex:I
    .end local v4           #tg:Lti/modules/titanium/ui/widget/TiUITabGroup;
    .restart local v0       #activeTab:Lti/modules/titanium/ui/TabProxy;
    :goto_1
    if-nez v0, :cond_6

    .line 241
    const-string v2, "Failed to get activeTab, make sure tabs are added first before calling getActiveTab()"

    .line 242
    .local v2, errorMessage:Ljava/lang/String;
    const-string v5, "TabGroupProxy"

    invoke-static {v7, v2}, Lorg/appcelerator/titanium/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 221
    .end local v2           #errorMessage:Ljava/lang/String;
    .restart local v1       #activeTabIndex:I
    .restart local v4       #tg:Lti/modules/titanium/ui/widget/TiUITabGroup;
    :cond_1
    iget-object v5, p0, Lti/modules/titanium/ui/TabGroupProxy;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v1, v5, :cond_0

    .line 222
    const-string v5, "TabGroupProxy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unable to get active tab, index is larger than tabs array: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Lorg/appcelerator/titanium/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 226
    .end local v1           #activeTabIndex:I
    .end local v4           #tg:Lti/modules/titanium/ui/widget/TiUITabGroup;
    :cond_2
    iget-object v5, p0, Lti/modules/titanium/ui/TabGroupProxy;->initialActiveTab:Ljava/lang/Object;

    instance-of v5, v5, Ljava/lang/Number;

    if-eqz v5, :cond_4

    .line 227
    iget-object v5, p0, Lti/modules/titanium/ui/TabGroupProxy;->initialActiveTab:Ljava/lang/Object;

    invoke-static {v5}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v3

    .line 228
    .local v3, tabsIndex:I
    iget-object v5, p0, Lti/modules/titanium/ui/TabGroupProxy;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v3, v5, :cond_3

    .line 229
    iget-object v5, p0, Lti/modules/titanium/ui/TabGroupProxy;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #activeTab:Lti/modules/titanium/ui/TabProxy;
    check-cast v0, Lti/modules/titanium/ui/TabProxy;

    .restart local v0       #activeTab:Lti/modules/titanium/ui/TabProxy;
    goto :goto_1

    .line 231
    :cond_3
    const-string v5, "TabGroupProxy"

    const-string v5, "Unable to get active tab, initialActiveTab index is larger than tabs array"

    invoke-static {v7, v5}, Lorg/appcelerator/titanium/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 233
    .end local v3           #tabsIndex:I
    :cond_4
    iget-object v5, p0, Lti/modules/titanium/ui/TabGroupProxy;->initialActiveTab:Ljava/lang/Object;

    instance-of v5, v5, Lti/modules/titanium/ui/TabProxy;

    if-eqz v5, :cond_5

    .line 234
    iget-object v0, p0, Lti/modules/titanium/ui/TabGroupProxy;->initialActiveTab:Ljava/lang/Object;

    .end local v0           #activeTab:Lti/modules/titanium/ui/TabProxy;
    check-cast v0, Lti/modules/titanium/ui/TabProxy;

    .restart local v0       #activeTab:Lti/modules/titanium/ui/TabProxy;
    goto :goto_1

    .line 236
    :cond_5
    const-string v5, "TabGroupProxy"

    const-string v5, "Unable to get active tab, initialActiveTab is not recognized"

    invoke-static {v7, v5}, Lorg/appcelerator/titanium/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 245
    :cond_6
    return-object v0
.end method

.method public getTabList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lti/modules/titanium/ui/TabProxy;",
            ">;"
        }
    .end annotation

    .prologue
    .line 106
    iget-object v0, p0, Lti/modules/titanium/ui/TabGroupProxy;->tabs:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTabs()[Lti/modules/titanium/ui/TabProxy;
    .locals 3

    .prologue
    .line 94
    const/4 v0, 0x0

    .line 96
    .local v0, tps:[Lti/modules/titanium/ui/TabProxy;
    iget-object v1, p0, Lti/modules/titanium/ui/TabGroupProxy;->tabs:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 97
    iget-object v1, p0, Lti/modules/titanium/ui/TabGroupProxy;->tabs:Ljava/util/ArrayList;

    iget-object v2, p0, Lti/modules/titanium/ui/TabGroupProxy;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lti/modules/titanium/ui/TabProxy;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .end local v0           #tps:[Lti/modules/titanium/ui/TabProxy;
    check-cast v0, [Lti/modules/titanium/ui/TabProxy;

    .line 100
    .restart local v0       #tps:[Lti/modules/titanium/ui/TabProxy;
    :cond_0
    return-object v0
.end method

.method public getView(Landroid/app/Activity;)Lorg/appcelerator/titanium/view/TiUIView;
    .locals 2
    .parameter "activity"

    .prologue
    .line 60
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to getView on a Window"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected handleClose(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 4
    .parameter "options"

    .prologue
    const/4 v3, 0x0

    .line 283
    sget-boolean v0, Lti/modules/titanium/ui/TabGroupProxy;->DBG:Z

    if-eqz v0, :cond_0

    .line 284
    const-string v0, "TabGroupProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleClose: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    :cond_0
    iput-object v3, p0, Lti/modules/titanium/ui/TabGroupProxy;->modelListener:Lorg/appcelerator/kroll/KrollProxyListener;

    .line 288
    iget-object v0, p0, Lti/modules/titanium/ui/TabGroupProxy;->weakActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 289
    iget-object v0, p0, Lti/modules/titanium/ui/TabGroupProxy;->weakActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lti/modules/titanium/ui/TiTabActivity;

    invoke-virtual {v0}, Lti/modules/titanium/ui/TiTabActivity;->finish()V

    .line 291
    :cond_1
    invoke-virtual {p0}, Lti/modules/titanium/ui/TabGroupProxy;->releaseViews()V

    .line 292
    iput-object v3, p0, Lti/modules/titanium/ui/TabGroupProxy;->windowId:Ljava/lang/String;

    .line 293
    iput-object v3, p0, Lti/modules/titanium/ui/TabGroupProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    .line 295
    const/4 v0, 0x0

    iput-boolean v0, p0, Lti/modules/titanium/ui/TabGroupProxy;->opened:Z

    .line 296
    return-void
.end method

.method protected handleGetActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 388
    iget-object v0, p0, Lti/modules/titanium/ui/TabGroupProxy;->weakActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/app/Activity;

    return-object p0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 66
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 87
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->handleMessage(Landroid/os/Message;)Z

    move-result v2

    :goto_0
    return v2

    .line 68
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lorg/appcelerator/titanium/util/AsyncResult;

    .line 69
    .local v1, result:Lorg/appcelerator/titanium/util/AsyncResult;
    invoke-virtual {v1}, Lorg/appcelerator/titanium/util/AsyncResult;->getArg()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lti/modules/titanium/ui/TabProxy;

    invoke-direct {p0, v2}, Lti/modules/titanium/ui/TabGroupProxy;->handleAddTab(Lti/modules/titanium/ui/TabProxy;)V

    .line 70
    invoke-virtual {v1, v4}, Lorg/appcelerator/titanium/util/AsyncResult;->setResult(Ljava/lang/Object;)V

    move v2, v3

    .line 71
    goto :goto_0

    .line 74
    .end local v1           #result:Lorg/appcelerator/titanium/util/AsyncResult;
    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lorg/appcelerator/titanium/util/AsyncResult;

    .line 75
    .restart local v1       #result:Lorg/appcelerator/titanium/util/AsyncResult;
    invoke-virtual {v1}, Lorg/appcelerator/titanium/util/AsyncResult;->getArg()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lti/modules/titanium/ui/TabProxy;

    invoke-virtual {p0, v2}, Lti/modules/titanium/ui/TabGroupProxy;->handleRemoveTab(Lti/modules/titanium/ui/TabProxy;)V

    .line 76
    invoke-virtual {v1, v4}, Lorg/appcelerator/titanium/util/AsyncResult;->setResult(Ljava/lang/Object;)V

    move v2, v3

    .line 77
    goto :goto_0

    .line 80
    .end local v1           #result:Lorg/appcelerator/titanium/util/AsyncResult;
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lti/modules/titanium/ui/TiTabActivity;

    .line 81
    .local v0, activity:Lti/modules/titanium/ui/TiTabActivity;
    new-instance v2, Lti/modules/titanium/ui/widget/TiUITabGroup;

    invoke-direct {v2, p0, v0}, Lti/modules/titanium/ui/widget/TiUITabGroup;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;Lti/modules/titanium/ui/TiTabActivity;)V

    iput-object v2, p0, Lti/modules/titanium/ui/TabGroupProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    .line 82
    iget-object v2, p0, Lti/modules/titanium/ui/TabGroupProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    iput-object v2, p0, Lti/modules/titanium/ui/TabGroupProxy;->modelListener:Lorg/appcelerator/kroll/KrollProxyListener;

    .line 83
    invoke-virtual {p0, v0}, Lti/modules/titanium/ui/TabGroupProxy;->handlePostOpen(Landroid/app/Activity;)V

    move v2, v3

    .line 84
    goto :goto_0

    .line 66
    :pswitch_data_0
    .packed-switch 0x834
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected handleOpen(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 6
    .parameter "options"

    .prologue
    const-string v5, "activeTab"

    .line 251
    sget-boolean v2, Lti/modules/titanium/ui/TabGroupProxy;->DBG:Z

    if-eqz v2, :cond_0

    .line 252
    const-string v2, "TabGroupProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleOpen: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    :cond_0
    const-string v2, "activeTab"

    invoke-virtual {p0, v5}, Lti/modules/titanium/ui/TabGroupProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 256
    const-string v2, "activeTab"

    invoke-virtual {p0, v5}, Lti/modules/titanium/ui/TabGroupProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lti/modules/titanium/ui/TabGroupProxy;->initialActiveTab:Ljava/lang/Object;

    .line 259
    :cond_1
    invoke-virtual {p0}, Lti/modules/titanium/ui/TabGroupProxy;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v2

    invoke-virtual {v2}, Lorg/appcelerator/titanium/TiContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 260
    .local v0, activity:Landroid/app/Activity;
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lti/modules/titanium/ui/TiTabActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 261
    .local v1, intent:Landroid/content/Intent;
    invoke-direct {p0, v0, v1}, Lti/modules/titanium/ui/TabGroupProxy;->fillIntent(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 262
    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 263
    return-void
.end method

.method public handlePostOpen(Landroid/app/Activity;)V
    .locals 6
    .parameter "activity"

    .prologue
    .line 267
    move-object v0, p1

    check-cast v0, Lti/modules/titanium/ui/TiTabActivity;

    move-object v4, v0

    invoke-virtual {v4, p0}, Lti/modules/titanium/ui/TiTabActivity;->setTabGroupProxy(Lti/modules/titanium/ui/TabGroupProxy;)V

    .line 268
    new-instance v4, Ljava/lang/ref/WeakReference;

    check-cast p1, Lti/modules/titanium/ui/TiTabActivity;

    .end local p1
    invoke-direct {v4, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v4, p0, Lti/modules/titanium/ui/TabGroupProxy;->weakActivity:Ljava/lang/ref/WeakReference;

    .line 269
    iget-object v3, p0, Lti/modules/titanium/ui/TabGroupProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    check-cast v3, Lti/modules/titanium/ui/widget/TiUITabGroup;

    .line 270
    .local v3, tg:Lti/modules/titanium/ui/widget/TiUITabGroup;
    iget-object v4, p0, Lti/modules/titanium/ui/TabGroupProxy;->tabs:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    .line 271
    iget-object v4, p0, Lti/modules/titanium/ui/TabGroupProxy;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lti/modules/titanium/ui/TabProxy;

    .line 272
    .local v2, tab:Lti/modules/titanium/ui/TabProxy;
    invoke-direct {p0, v3, v2}, Lti/modules/titanium/ui/TabGroupProxy;->addTabToGroup(Lti/modules/titanium/ui/widget/TiUITabGroup;Lti/modules/titanium/ui/TabProxy;)V

    goto :goto_0

    .line 275
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #tab:Lti/modules/titanium/ui/TabProxy;
    :cond_0
    iget-object v4, p0, Lti/modules/titanium/ui/TabGroupProxy;->initialActiveTab:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Lti/modules/titanium/ui/widget/TiUITabGroup;->changeActiveTab(Ljava/lang/Object;)V

    .line 277
    const/4 v4, 0x1

    iput-boolean v4, p0, Lti/modules/titanium/ui/TabGroupProxy;->opened:Z

    .line 278
    const-string v4, "open"

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lti/modules/titanium/ui/TabGroupProxy;->fireEvent(Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)Z

    .line 279
    return-void
.end method

.method public handleRemoveTab(Lti/modules/titanium/ui/TabProxy;)V
    .locals 0
    .parameter "tab"

    .prologue
    .line 197
    return-void
.end method

.method public handleToImage()Lorg/appcelerator/kroll/KrollDict;
    .locals 3

    .prologue
    .line 368
    invoke-virtual {p0}, Lti/modules/titanium/ui/TabGroupProxy;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v0

    iget-object v1, p0, Lti/modules/titanium/ui/TabGroupProxy;->properties:Lorg/appcelerator/kroll/KrollDict;

    invoke-virtual {p0}, Lti/modules/titanium/ui/TabGroupProxy;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v2

    invoke-virtual {v2}, Lorg/appcelerator/titanium/TiContext;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/appcelerator/titanium/util/TiUIHelper;->viewToImage(Lorg/appcelerator/titanium/TiContext;Lorg/appcelerator/kroll/KrollDict;Landroid/view/View;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v0

    return-object v0
.end method

.method public releaseViews()V
    .locals 4

    .prologue
    .line 374
    invoke-super {p0}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->releaseViews()V

    .line 375
    iget-object v2, p0, Lti/modules/titanium/ui/TabGroupProxy;->tabs:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 376
    iget-object v2, p0, Lti/modules/titanium/ui/TabGroupProxy;->tabs:Ljava/util/ArrayList;

    monitor-enter v2

    .line 377
    :try_start_0
    iget-object v3, p0, Lti/modules/titanium/ui/TabGroupProxy;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lti/modules/titanium/ui/TabProxy;

    .line 378
    .local v1, t:Lti/modules/titanium/ui/TabProxy;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lti/modules/titanium/ui/TabProxy;->setTabGroup(Lti/modules/titanium/ui/TabGroupProxy;)V

    .line 379
    invoke-virtual {v1}, Lti/modules/titanium/ui/TabProxy;->releaseViews()V

    goto :goto_0

    .line 381
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #t:Lti/modules/titanium/ui/TabProxy;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 383
    .end local v0           #i$:Ljava/util/Iterator;
    :cond_1
    iget-object v2, p0, Lti/modules/titanium/ui/TabGroupProxy;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 384
    return-void
.end method

.method public removeTab(Lti/modules/titanium/ui/TabProxy;)V
    .locals 0
    .parameter "tab"

    .prologue
    .line 196
    return-void
.end method

.method public setActiveTab(Ljava/lang/Object;)V
    .locals 2
    .parameter "tab"

    .prologue
    .line 201
    invoke-virtual {p0}, Lti/modules/titanium/ui/TabGroupProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 202
    invoke-virtual {p0}, Lti/modules/titanium/ui/TabGroupProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    check-cast v0, Lti/modules/titanium/ui/widget/TiUITabGroup;

    .line 203
    .local v0, tg:Lti/modules/titanium/ui/widget/TiUITabGroup;
    invoke-virtual {v0, p1}, Lti/modules/titanium/ui/widget/TiUITabGroup;->changeActiveTab(Ljava/lang/Object;)V

    .line 209
    .end local v0           #tg:Lti/modules/titanium/ui/widget/TiUITabGroup;
    :goto_0
    return-void

    .line 207
    :cond_0
    iput-object p1, p0, Lti/modules/titanium/ui/TabGroupProxy;->initialActiveTab:Ljava/lang/Object;

    goto :goto_0
.end method
