.class public Lti/modules/titanium/ui/TiTabActivity;
.super Landroid/app/ActivityGroup;
.source "TiTabActivity.java"

# interfaces
.implements Lorg/appcelerator/titanium/view/ITiWindowHandler;


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field private static final LCAT:Ljava/lang/String; = "TiTabActivity"


# instance fields
.field protected handler:Landroid/os/Handler;

.field protected layout:Lorg/appcelerator/titanium/view/TiCompositeLayout;

.field protected proxy:Lti/modules/titanium/ui/TabGroupProxy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    sget-boolean v0, Lorg/appcelerator/titanium/util/TiConfig;->LOGD:Z

    sput-boolean v0, Lti/modules/titanium/ui/TiTabActivity;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/app/ActivityGroup;-><init>()V

    .line 41
    return-void
.end method


# virtual methods
.method public addWindow(Landroid/view/View;Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;)V
    .locals 1
    .parameter "v"
    .parameter "params"

    .prologue
    .line 144
    iget-object v0, p0, Lti/modules/titanium/ui/TiTabActivity;->layout:Lorg/appcelerator/titanium/view/TiCompositeLayout;

    invoke-virtual {v0, p1, p2}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 145
    return-void
.end method

.method public finish()V
    .locals 5

    .prologue
    .line 156
    invoke-virtual {p0}, Lti/modules/titanium/ui/TiTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 157
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 158
    const-string v3, "finishRoot"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 159
    invoke-virtual {p0}, Lti/modules/titanium/ui/TiTabActivity;->getApplication()Landroid/app/Application;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 160
    invoke-virtual {p0}, Lti/modules/titanium/ui/TiTabActivity;->getTiApp()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v2

    .line 161
    .local v2, tiApp:Lorg/appcelerator/titanium/TiApplication;
    if-eqz v2, :cond_0

    .line 162
    invoke-virtual {v2}, Lorg/appcelerator/titanium/TiApplication;->getRootActivity()Lorg/appcelerator/titanium/TiRootActivity;

    move-result-object v1

    .line 163
    .local v1, rootActivity:Lorg/appcelerator/titanium/TiRootActivity;
    if-eqz v1, :cond_0

    .line 164
    invoke-virtual {v1}, Lorg/appcelerator/titanium/TiRootActivity;->finish()V

    .line 171
    .end local v1           #rootActivity:Lorg/appcelerator/titanium/TiRootActivity;
    .end local v2           #tiApp:Lorg/appcelerator/titanium/TiApplication;
    :cond_0
    invoke-super {p0}, Landroid/app/ActivityGroup;->finish()V

    .line 172
    return-void
.end method

.method public getLayout()Lorg/appcelerator/titanium/view/TiCompositeLayout;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lti/modules/titanium/ui/TiTabActivity;->layout:Lorg/appcelerator/titanium/view/TiCompositeLayout;

    return-object v0
.end method

.method public getTiApp()Lorg/appcelerator/titanium/TiApplication;
    .locals 0

    .prologue
    .line 133
    invoke-virtual {p0}, Lti/modules/titanium/ui/TiTabActivity;->getApplication()Landroid/app/Application;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/appcelerator/titanium/TiApplication;

    return-object p0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter "savedInstanceState"

    .prologue
    .line 50
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onCreate(Landroid/os/Bundle;)V

    .line 51
    new-instance v10, Landroid/os/Handler;

    invoke-direct {v10}, Landroid/os/Handler;-><init>()V

    iput-object v10, p0, Lti/modules/titanium/ui/TiTabActivity;->handler:Landroid/os/Handler;

    .line 53
    invoke-virtual {p0}, Lti/modules/titanium/ui/TiTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    .line 55
    .local v5, intent:Landroid/content/Intent;
    const/4 v4, 0x0

    .line 56
    .local v4, fullscreen:Z
    const/4 v9, 0x0

    .line 57
    .local v9, navbar:Z
    const/4 v8, 0x0

    .line 58
    .local v8, messenger:Landroid/os/Messenger;
    const/4 v7, 0x0

    .line 59
    .local v7, messageId:Ljava/lang/Integer;
    const-string v1, ""

    .line 61
    .local v1, arrangementFromIntent:Ljava/lang/String;
    if-eqz v5, :cond_3

    .line 62
    const-string v10, "fullscreen"

    invoke-virtual {v5, v10}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 63
    const-string v10, "fullscreen"

    invoke-virtual {v5, v10, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 65
    :cond_0
    const-string v10, "navBarHidden"

    invoke-virtual {v5, v10}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 66
    const-string v10, "navBarHidden"

    invoke-virtual {v5, v10, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    if-nez v10, :cond_6

    const/4 v10, 0x1

    move v9, v10

    .line 68
    :cond_1
    :goto_0
    const-string v10, "messenger"

    invoke-virtual {v5, v10}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 69
    const-string v10, "messenger"

    invoke-virtual {v5, v10}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    .end local v8           #messenger:Landroid/os/Messenger;
    check-cast v8, Landroid/os/Messenger;

    .line 70
    .restart local v8       #messenger:Landroid/os/Messenger;
    const-string v10, "messageId"

    const/4 v11, -0x1

    invoke-virtual {v5, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 72
    :cond_2
    const-string v10, "layout"

    invoke-virtual {v5, v10}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 73
    const-string v10, "layout"

    invoke-virtual {v5, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 76
    :cond_3
    sget-object v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;->DEFAULT:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;

    .line 77
    .local v0, arrangement:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;
    const-string v10, "horizontal"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 78
    sget-object v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;->HORIZONTAL:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;

    .line 82
    :cond_4
    :goto_1
    new-instance v10, Lorg/appcelerator/titanium/view/TiCompositeLayout;

    invoke-direct {v10, p0, v0}, Lorg/appcelerator/titanium/view/TiCompositeLayout;-><init>(Landroid/content/Context;Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;)V

    iput-object v10, p0, Lti/modules/titanium/ui/TiTabActivity;->layout:Lorg/appcelerator/titanium/view/TiCompositeLayout;

    .line 84
    if-eqz v4, :cond_5

    .line 85
    invoke-virtual {p0}, Lti/modules/titanium/ui/TiTabActivity;->getWindow()Landroid/view/Window;

    move-result-object v10

    const/16 v11, 0x400

    const/16 v12, 0x400

    invoke-virtual {v10, v11, v12}, Landroid/view/Window;->setFlags(II)V

    .line 89
    :cond_5
    if-eqz v9, :cond_8

    .line 90
    const/4 v10, 0x3

    invoke-virtual {p0, v10}, Lti/modules/titanium/ui/TiTabActivity;->requestWindowFeature(I)Z

    .line 91
    const/4 v10, 0x4

    invoke-virtual {p0, v10}, Lti/modules/titanium/ui/TiTabActivity;->requestWindowFeature(I)Z

    .line 92
    const/4 v10, 0x2

    invoke-virtual {p0, v10}, Lti/modules/titanium/ui/TiTabActivity;->requestWindowFeature(I)Z

    .line 93
    const/4 v10, 0x5

    invoke-virtual {p0, v10}, Lti/modules/titanium/ui/TiTabActivity;->requestWindowFeature(I)Z

    .line 98
    :goto_2
    iget-object v10, p0, Lti/modules/titanium/ui/TiTabActivity;->layout:Lorg/appcelerator/titanium/view/TiCompositeLayout;

    invoke-virtual {p0, v10}, Lti/modules/titanium/ui/TiTabActivity;->setContentView(Landroid/view/View;)V

    .line 102
    move-object v6, p0

    .line 103
    .local v6, me:Lti/modules/titanium/ui/TiTabActivity;
    move-object v3, v8

    .line 104
    .local v3, fMessenger:Landroid/os/Messenger;
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 105
    .local v2, fMessageId:I
    iget-object v10, p0, Lti/modules/titanium/ui/TiTabActivity;->handler:Landroid/os/Handler;

    new-instance v11, Lti/modules/titanium/ui/TiTabActivity$1;

    invoke-direct {v11, p0, v3, v2, v6}, Lti/modules/titanium/ui/TiTabActivity$1;-><init>(Lti/modules/titanium/ui/TiTabActivity;Landroid/os/Messenger;ILti/modules/titanium/ui/TiTabActivity;)V

    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 129
    return-void

    .line 66
    .end local v0           #arrangement:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;
    .end local v2           #fMessageId:I
    .end local v3           #fMessenger:Landroid/os/Messenger;
    .end local v6           #me:Lti/modules/titanium/ui/TiTabActivity;
    :cond_6
    const/4 v10, 0x0

    move v9, v10

    goto :goto_0

    .line 79
    .restart local v0       #arrangement:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;
    :cond_7
    const-string v10, "vertical"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 80
    sget-object v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;->VERTICAL:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;

    goto :goto_1

    .line 95
    :cond_8
    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Lti/modules/titanium/ui/TiTabActivity;->requestWindowFeature(I)Z

    goto :goto_2
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 193
    invoke-super {p0}, Landroid/app/ActivityGroup;->onDestroy()V

    .line 194
    iget-object v0, p0, Lti/modules/titanium/ui/TiTabActivity;->layout:Lorg/appcelerator/titanium/view/TiCompositeLayout;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lti/modules/titanium/ui/TiTabActivity;->layout:Lorg/appcelerator/titanium/view/TiCompositeLayout;

    invoke-virtual {v0}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->removeAllViews()V

    .line 196
    iput-object v1, p0, Lti/modules/titanium/ui/TiTabActivity;->layout:Lorg/appcelerator/titanium/view/TiCompositeLayout;

    .line 198
    :cond_0
    iget-object v0, p0, Lti/modules/titanium/ui/TiTabActivity;->proxy:Lti/modules/titanium/ui/TabGroupProxy;

    if-eqz v0, :cond_1

    .line 199
    iget-object v0, p0, Lti/modules/titanium/ui/TiTabActivity;->proxy:Lti/modules/titanium/ui/TabGroupProxy;

    invoke-virtual {v0}, Lti/modules/titanium/ui/TabGroupProxy;->closeFromActivity()V

    .line 200
    iput-object v1, p0, Lti/modules/titanium/ui/TiTabActivity;->proxy:Lti/modules/titanium/ui/TabGroupProxy;

    .line 203
    :cond_1
    iput-object v1, p0, Lti/modules/titanium/ui/TiTabActivity;->handler:Landroid/os/Handler;

    .line 204
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 177
    invoke-super {p0}, Landroid/app/ActivityGroup;->onPause()V

    .line 178
    invoke-virtual {p0}, Lti/modules/titanium/ui/TiTabActivity;->getTiApp()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/TiApplication;->setWindowHandler(Lorg/appcelerator/titanium/view/ITiWindowHandler;)V

    .line 179
    invoke-virtual {p0}, Lti/modules/titanium/ui/TiTabActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lorg/appcelerator/titanium/TiApplication;

    invoke-virtual {v0, p0, v1}, Lorg/appcelerator/titanium/TiApplication;->setCurrentActivity(Landroid/app/Activity;Landroid/app/Activity;)V

    .line 180
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 185
    invoke-super {p0}, Landroid/app/ActivityGroup;->onResume()V

    .line 186
    invoke-virtual {p0}, Lti/modules/titanium/ui/TiTabActivity;->getTiApp()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/appcelerator/titanium/TiApplication;->setWindowHandler(Lorg/appcelerator/titanium/view/ITiWindowHandler;)V

    .line 187
    invoke-virtual {p0}, Lti/modules/titanium/ui/TiTabActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lorg/appcelerator/titanium/TiApplication;

    invoke-virtual {v0, p0, p0}, Lorg/appcelerator/titanium/TiApplication;->setCurrentActivity(Landroid/app/Activity;Landroid/app/Activity;)V

    .line 188
    return-void
.end method

.method public removeWindow(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 150
    iget-object v0, p0, Lti/modules/titanium/ui/TiTabActivity;->layout:Lorg/appcelerator/titanium/view/TiCompositeLayout;

    invoke-virtual {v0, p1}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->removeView(Landroid/view/View;)V

    .line 151
    return-void
.end method

.method public setTabGroupProxy(Lti/modules/titanium/ui/TabGroupProxy;)V
    .locals 0
    .parameter "proxy"

    .prologue
    .line 44
    iput-object p1, p0, Lti/modules/titanium/ui/TiTabActivity;->proxy:Lti/modules/titanium/ui/TabGroupProxy;

    .line 45
    return-void
.end method
