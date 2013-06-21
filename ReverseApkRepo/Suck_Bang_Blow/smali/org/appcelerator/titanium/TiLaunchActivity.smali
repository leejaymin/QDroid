.class public abstract Lorg/appcelerator/titanium/TiLaunchActivity;
.super Lorg/appcelerator/titanium/TiBaseActivity;
.source "TiLaunchActivity.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "TiLaunchActivity"


# instance fields
.field protected noLaunchCategoryAlert:Landroid/app/AlertDialog;

.field protected tiContext:Lorg/appcelerator/titanium/TiContext;

.field protected url:Lorg/appcelerator/titanium/util/TiUrl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    sget-boolean v0, Lorg/appcelerator/titanium/util/TiConfig;->LOGD:Z

    sput-boolean v0, Lorg/appcelerator/titanium/TiLaunchActivity;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lorg/appcelerator/titanium/TiBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected alertMissingLauncher()V
    .locals 8

    .prologue
    .line 137
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiLaunchActivity;->getTiApp()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v6

    invoke-virtual {v6}, Lorg/appcelerator/titanium/TiApplication;->getSystemProperties()Lorg/appcelerator/titanium/TiProperties;

    move-result-object v4

    .line 138
    .local v4, systemProperties:Lorg/appcelerator/titanium/TiProperties;
    const-string v6, "ti.android.bug2373.backgroundColor"

    const-string v7, "black"

    invoke-virtual {v4, v6, v7}, Lorg/appcelerator/titanium/TiProperties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 139
    .local v0, backgroundColor:Ljava/lang/String;
    iget-object v6, p0, Lorg/appcelerator/titanium/TiLaunchActivity;->layout:Lorg/appcelerator/titanium/view/TiCompositeLayout;

    invoke-static {v0}, Lorg/appcelerator/titanium/util/TiColorHelper;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->setBackgroundColor(I)V

    .line 141
    new-instance v3, Lorg/appcelerator/titanium/TiLaunchActivity$1;

    invoke-direct {v3, p0}, Lorg/appcelerator/titanium/TiLaunchActivity$1;-><init>(Lorg/appcelerator/titanium/TiLaunchActivity;)V

    .line 148
    .local v3, restartListener:Landroid/content/DialogInterface$OnClickListener;
    const-string v6, "ti.android.bug2373.title"

    const-string v7, "Restart Required"

    invoke-virtual {v4, v6, v7}, Lorg/appcelerator/titanium/TiProperties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 149
    .local v5, title:Ljava/lang/String;
    const-string v6, "ti.android.bug2373.message"

    const-string v7, "An application restart is required"

    invoke-virtual {v4, v6, v7}, Lorg/appcelerator/titanium/TiProperties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 150
    .local v2, message:Ljava/lang/String;
    const-string v6, "ti.android.bug2373.buttonText"

    const-string v7, "Continue"

    invoke-virtual {v4, v6, v7}, Lorg/appcelerator/titanium/TiProperties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 151
    .local v1, buttonText:Ljava/lang/String;
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Lorg/appcelerator/titanium/TiLaunchActivity;->noLaunchCategoryAlert:Landroid/app/AlertDialog;

    .line 156
    iget-object v6, p0, Lorg/appcelerator/titanium/TiLaunchActivity;->noLaunchCategoryAlert:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    .line 157
    return-void
.end method

.method protected checkMissingLauncher(Landroid/content/Intent;Landroid/os/Bundle;)Z
    .locals 9
    .parameter "intent"
    .parameter "savedInstanceState"

    .prologue
    .line 110
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, action:Ljava/lang/String;
    if-eqz v0, :cond_2

    const-string v5, "android.intent.action.MAIN"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 112
    invoke-virtual {p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v2

    .line 113
    .local v2, categories:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v1, 0x1

    .line 114
    .local v1, b2373Detected:Z
    if-eqz v2, :cond_1

    .line 115
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 116
    .local v3, category:Ljava/lang/String;
    const-string v5, "android.intent.category.LAUNCHER"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 117
    const/4 v1, 0x0

    .line 123
    .end local v3           #category:Ljava/lang/String;
    .end local v4           #i$:Ljava/util/Iterator;
    :cond_1
    if-eqz v1, :cond_2

    .line 124
    const-string v5, "TiLaunchActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Android issue 2373 detected (missing intent CATEGORY_LAUNCHER), restarting app. Instances: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lorg/appcelerator/titanium/TiLaunchActivity;->getInstanceCount()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/appcelerator/titanium/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    new-instance v5, Lorg/appcelerator/titanium/view/TiCompositeLayout;

    invoke-direct {v5, p0}, Lorg/appcelerator/titanium/view/TiCompositeLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lorg/appcelerator/titanium/TiLaunchActivity;->layout:Lorg/appcelerator/titanium/view/TiCompositeLayout;

    .line 126
    iget-object v5, p0, Lorg/appcelerator/titanium/TiLaunchActivity;->layout:Lorg/appcelerator/titanium/view/TiCompositeLayout;

    invoke-virtual {p0, v5}, Lorg/appcelerator/titanium/TiLaunchActivity;->setContentView(Landroid/view/View;)V

    .line 127
    invoke-virtual {p0, p2}, Lorg/appcelerator/titanium/TiLaunchActivity;->activityOnCreate(Landroid/os/Bundle;)V

    .line 128
    const/4 v5, 0x1

    .line 131
    .end local v1           #b2373Detected:Z
    .end local v2           #categories:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :goto_0
    return v5

    :cond_2
    const/4 v5, 0x0

    goto :goto_0
.end method

.method protected contextCreated()V
    .locals 0

    .prologue
    .line 58
    return-void
.end method

.method public abstract getUrl()Ljava/lang/String;
.end method

.method protected loadActivityScript()V
    .locals 7

    .prologue
    const-string v6, "Signal JS loaded"

    const-string v5, "TiLaunchActivity"

    .line 63
    :try_start_0
    iget-object v2, p0, Lorg/appcelerator/titanium/TiLaunchActivity;->url:Lorg/appcelerator/titanium/util/TiUrl;

    iget-object v3, p0, Lorg/appcelerator/titanium/TiLaunchActivity;->tiContext:Lorg/appcelerator/titanium/TiContext;

    invoke-virtual {v2, v3}, Lorg/appcelerator/titanium/util/TiUrl;->resolve(Lorg/appcelerator/titanium/TiContext;)Ljava/lang/String;

    move-result-object v1

    .line 64
    .local v1, fullUrl:Ljava/lang/String;
    sget-boolean v2, Lorg/appcelerator/titanium/TiLaunchActivity;->DBG:Z

    if-eqz v2, :cond_0

    .line 65
    const-string v2, "TiLaunchActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Eval JS Activity:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    :cond_0
    iget-object v2, p0, Lorg/appcelerator/titanium/TiLaunchActivity;->tiContext:Lorg/appcelerator/titanium/TiContext;

    invoke-virtual {v2, v1}, Lorg/appcelerator/titanium/TiContext;->evalFile(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    sget-boolean v2, Lorg/appcelerator/titanium/TiLaunchActivity;->DBG:Z

    if-eqz v2, :cond_1

    .line 73
    const-string v2, "TiLaunchActivity"

    const-string v2, "Signal JS loaded"

    invoke-static {v5, v6}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :cond_1
    iget-object v2, p0, Lorg/appcelerator/titanium/TiLaunchActivity;->messageQueue:Lorg/appcelerator/titanium/TiMessageQueue;

    invoke-virtual {v2}, Lorg/appcelerator/titanium/TiMessageQueue;->stopBlocking()V

    .line 77
    .end local v1           #fullUrl:Ljava/lang/String;
    :goto_0
    return-void

    .line 68
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 69
    .local v0, e:Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 70
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiLaunchActivity;->finish()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    sget-boolean v2, Lorg/appcelerator/titanium/TiLaunchActivity;->DBG:Z

    if-eqz v2, :cond_2

    .line 73
    const-string v2, "TiLaunchActivity"

    const-string v2, "Signal JS loaded"

    invoke-static {v5, v6}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :cond_2
    iget-object v2, p0, Lorg/appcelerator/titanium/TiLaunchActivity;->messageQueue:Lorg/appcelerator/titanium/TiMessageQueue;

    invoke-virtual {v2}, Lorg/appcelerator/titanium/TiMessageQueue;->stopBlocking()V

    goto :goto_0

    .line 72
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v2

    sget-boolean v3, Lorg/appcelerator/titanium/TiLaunchActivity;->DBG:Z

    if-eqz v3, :cond_3

    .line 73
    const-string v3, "TiLaunchActivity"

    const-string v3, "Signal JS loaded"

    invoke-static {v5, v6}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :cond_3
    iget-object v3, p0, Lorg/appcelerator/titanium/TiLaunchActivity;->messageQueue:Lorg/appcelerator/titanium/TiMessageQueue;

    invoke-virtual {v3}, Lorg/appcelerator/titanium/TiMessageQueue;->stopBlocking()V

    throw v2
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 82
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiLaunchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 83
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {p0, v0, p1}, Lorg/appcelerator/titanium/TiLaunchActivity;->checkMissingLauncher(Landroid/content/Intent;Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 98
    :goto_0
    return-void

    .line 89
    :cond_0
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiLaunchActivity;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/appcelerator/titanium/util/TiUrl;->normalizeWindowUrl(Ljava/lang/String;)Lorg/appcelerator/titanium/util/TiUrl;

    move-result-object v1

    iput-object v1, p0, Lorg/appcelerator/titanium/TiLaunchActivity;->url:Lorg/appcelerator/titanium/util/TiUrl;

    .line 90
    iget-object v1, p0, Lorg/appcelerator/titanium/TiLaunchActivity;->url:Lorg/appcelerator/titanium/util/TiUrl;

    iget-object v1, v1, Lorg/appcelerator/titanium/util/TiUrl;->baseUrl:Ljava/lang/String;

    iget-object v2, p0, Lorg/appcelerator/titanium/TiLaunchActivity;->url:Lorg/appcelerator/titanium/util/TiUrl;

    iget-object v2, v2, Lorg/appcelerator/titanium/util/TiUrl;->url:Ljava/lang/String;

    invoke-static {p0, v1, v2}, Lorg/appcelerator/titanium/TiContext;->createTiContext(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Lorg/appcelerator/titanium/TiContext;

    move-result-object v1

    iput-object v1, p0, Lorg/appcelerator/titanium/TiLaunchActivity;->tiContext:Lorg/appcelerator/titanium/TiContext;

    .line 91
    iget-object v1, p0, Lorg/appcelerator/titanium/TiLaunchActivity;->tiContext:Lorg/appcelerator/titanium/TiContext;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/appcelerator/titanium/TiContext;->setLaunchContext(Z)V

    .line 92
    iget-object v1, p0, Lorg/appcelerator/titanium/TiLaunchActivity;->activityProxy:Lorg/appcelerator/titanium/proxy/ActivityProxy;

    if-nez v1, :cond_1

    .line 93
    new-instance v1, Lorg/appcelerator/titanium/proxy/ActivityProxy;

    iget-object v2, p0, Lorg/appcelerator/titanium/TiLaunchActivity;->tiContext:Lorg/appcelerator/titanium/TiContext;

    invoke-direct {v1, v2, p0}, Lorg/appcelerator/titanium/proxy/ActivityProxy;-><init>(Lorg/appcelerator/titanium/TiContext;Landroid/app/Activity;)V

    invoke-virtual {p0, v1}, Lorg/appcelerator/titanium/TiLaunchActivity;->setActivityProxy(Lorg/appcelerator/titanium/proxy/ActivityProxy;)V

    .line 95
    :cond_1
    iget-object v1, p0, Lorg/appcelerator/titanium/TiLaunchActivity;->tiContext:Lorg/appcelerator/titanium/TiContext;

    iget-object v2, p0, Lorg/appcelerator/titanium/TiLaunchActivity;->activityProxy:Lorg/appcelerator/titanium/proxy/ActivityProxy;

    invoke-static {v1, v2}, Lorg/appcelerator/titanium/util/TiBindingHelper;->bindCurrentActivity(Lorg/appcelerator/titanium/TiContext;Lorg/appcelerator/titanium/proxy/ActivityProxy;)V

    .line 96
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiLaunchActivity;->contextCreated()V

    .line 97
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/TiBaseActivity;->onCreate(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 233
    iget-object v0, p0, Lorg/appcelerator/titanium/TiLaunchActivity;->tiContext:Lorg/appcelerator/titanium/TiContext;

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lorg/appcelerator/titanium/TiLaunchActivity;->tiContext:Lorg/appcelerator/titanium/TiContext;

    const/4 v1, 0x4

    invoke-virtual {v0, p0, v1}, Lorg/appcelerator/titanium/TiContext;->fireLifecycleEvent(Landroid/app/Activity;I)V

    .line 236
    :cond_0
    invoke-super {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->onDestroy()V

    .line 237
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 208
    iget-object v0, p0, Lorg/appcelerator/titanium/TiLaunchActivity;->tiContext:Lorg/appcelerator/titanium/TiContext;

    if-nez v0, :cond_1

    .line 210
    iget-object v0, p0, Lorg/appcelerator/titanium/TiLaunchActivity;->noLaunchCategoryAlert:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/appcelerator/titanium/TiLaunchActivity;->noLaunchCategoryAlert:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lorg/appcelerator/titanium/TiLaunchActivity;->noLaunchCategoryAlert:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 212
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/appcelerator/titanium/TiLaunchActivity;->noLaunchCategoryAlert:Landroid/app/AlertDialog;

    .line 214
    :cond_0
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiLaunchActivity;->finish()V

    .line 218
    :goto_0
    invoke-super {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->onPause()V

    .line 219
    return-void

    .line 216
    :cond_1
    iget-object v0, p0, Lorg/appcelerator/titanium/TiLaunchActivity;->tiContext:Lorg/appcelerator/titanium/TiContext;

    const/4 v1, 0x2

    invoke-virtual {v0, p0, v1}, Lorg/appcelerator/titanium/TiContext;->fireLifecycleEvent(Landroid/app/Activity;I)V

    goto :goto_0
.end method

.method protected onRestart()V
    .locals 4

    .prologue
    .line 176
    invoke-super {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->onRestart()V

    .line 177
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiLaunchActivity;->getTiApp()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v2

    invoke-virtual {v2}, Lorg/appcelerator/titanium/TiApplication;->getSystemProperties()Lorg/appcelerator/titanium/TiProperties;

    move-result-object v1

    .line 178
    .local v1, systemProperties:Lorg/appcelerator/titanium/TiProperties;
    const-string v2, "ti.android.root.reappears.restart"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/appcelerator/titanium/TiProperties;->getBool(Ljava/lang/String;Z)Z

    move-result v0

    .line 179
    .local v0, restart:Z
    if-eqz v0, :cond_0

    .line 180
    const-string v2, "TiLaunchActivity"

    const-string v3, "Tasks may have been destroyed by Android OS for inactivity. Restarting."

    invoke-static {v2, v3}, Lorg/appcelerator/titanium/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    const/16 v2, 0xfa

    invoke-virtual {p0, v2}, Lorg/appcelerator/titanium/TiLaunchActivity;->restartActivity(I)V

    .line 183
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 197
    iget-object v0, p0, Lorg/appcelerator/titanium/TiLaunchActivity;->tiContext:Lorg/appcelerator/titanium/TiContext;

    if-nez v0, :cond_0

    .line 198
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiLaunchActivity;->alertMissingLauncher()V

    .line 202
    :goto_0
    invoke-super {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->onResume()V

    .line 203
    return-void

    .line 200
    :cond_0
    iget-object v0, p0, Lorg/appcelerator/titanium/TiLaunchActivity;->tiContext:Lorg/appcelerator/titanium/TiContext;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lorg/appcelerator/titanium/TiContext;->fireLifecycleEvent(Landroid/app/Activity;I)V

    goto :goto_0
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 188
    invoke-super {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->onStart()V

    .line 189
    iget-object v0, p0, Lorg/appcelerator/titanium/TiLaunchActivity;->tiContext:Lorg/appcelerator/titanium/TiContext;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lorg/appcelerator/titanium/TiLaunchActivity;->tiContext:Lorg/appcelerator/titanium/TiContext;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lorg/appcelerator/titanium/TiContext;->fireLifecycleEvent(Landroid/app/Activity;I)V

    .line 192
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 224
    iget-object v0, p0, Lorg/appcelerator/titanium/TiLaunchActivity;->tiContext:Lorg/appcelerator/titanium/TiContext;

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lorg/appcelerator/titanium/TiLaunchActivity;->tiContext:Lorg/appcelerator/titanium/TiContext;

    const/4 v1, 0x3

    invoke-virtual {v0, p0, v1}, Lorg/appcelerator/titanium/TiContext;->fireLifecycleEvent(Landroid/app/Activity;I)V

    .line 227
    :cond_0
    invoke-super {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->onStop()V

    .line 228
    return-void
.end method

.method protected restartActivity(I)V
    .locals 8
    .parameter "delay"

    .prologue
    .line 161
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiLaunchActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 162
    .local v2, relaunch:Landroid/content/Intent;
    const-string v3, "android.intent.action.MAIN"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 163
    const-string v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 165
    const-string v3, "alarm"

    invoke-virtual {p0, v3}, Lorg/appcelerator/titanium/TiLaunchActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 166
    .local v0, am:Landroid/app/AlarmManager;
    if-eqz v0, :cond_0

    .line 167
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiLaunchActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    const/high16 v5, 0x4000

    invoke-static {v3, v4, v2, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 168
    .local v1, pi:Landroid/app/PendingIntent;
    const/4 v3, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    int-to-long v6, p1

    add-long/2addr v4, v6

    invoke-virtual {v0, v3, v4, v5, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 170
    .end local v1           #pi:Landroid/app/PendingIntent;
    :cond_0
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiLaunchActivity;->finish()V

    .line 171
    return-void
.end method

.method protected scriptLoaded()V
    .locals 0

    .prologue
    .line 51
    return-void
.end method

.method protected windowCreated()V
    .locals 0

    .prologue
    .line 103
    invoke-super {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->windowCreated()V

    .line 104
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiLaunchActivity;->loadActivityScript()V

    .line 105
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiLaunchActivity;->scriptLoaded()V

    .line 106
    return-void
.end method
