.class public abstract Lorg/appcelerator/titanium/TiBaseActivity;
.super Landroid/app/Activity;
.source "TiBaseActivity.java"

# interfaces
.implements Lorg/appcelerator/titanium/util/TiActivitySupport;
.implements Lorg/appcelerator/titanium/view/ITiWindowHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/appcelerator/titanium/TiBaseActivity$ConfigurationChangedListener;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "TiBaseActivity"


# instance fields
.field protected activityProxy:Lorg/appcelerator/titanium/proxy/ActivityProxy;

.field protected configChangedListeners:Lorg/appcelerator/titanium/util/TiWeakList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/appcelerator/titanium/util/TiWeakList",
            "<",
            "Lorg/appcelerator/titanium/TiBaseActivity$ConfigurationChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field protected layout:Lorg/appcelerator/titanium/view/TiCompositeLayout;

.field protected menuHelper:Lorg/appcelerator/titanium/util/TiMenuSupport;

.field protected messageQueue:Lorg/appcelerator/titanium/TiMessageQueue;

.field protected messenger:Landroid/os/Messenger;

.field protected msgActivityCreatedId:I

.field protected msgId:I

.field protected mustFireInitialFocus:Z

.field private onDestroyFired:Z

.field protected orientationDegrees:I

.field protected orientationListener:Landroid/view/OrientationEventListener;

.field protected orientationOverride:I

.field protected supportHelper:Lorg/appcelerator/titanium/util/TiActivitySupportHelper;

.field protected window:Lorg/appcelerator/titanium/proxy/TiWindowProxy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    sget-boolean v0, Lorg/appcelerator/titanium/util/TiConfig;->LOGD:Z

    sput-boolean v0, Lorg/appcelerator/titanium/TiBaseActivity;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 45
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/appcelerator/titanium/TiBaseActivity;->onDestroyFired:Z

    .line 58
    new-instance v0, Lorg/appcelerator/titanium/util/TiWeakList;

    invoke-direct {v0}, Lorg/appcelerator/titanium/util/TiWeakList;-><init>()V

    iput-object v0, p0, Lorg/appcelerator/titanium/TiBaseActivity;->configChangedListeners:Lorg/appcelerator/titanium/util/TiWeakList;

    .line 61
    iput v1, p0, Lorg/appcelerator/titanium/TiBaseActivity;->orientationOverride:I

    .line 65
    iput v1, p0, Lorg/appcelerator/titanium/TiBaseActivity;->msgActivityCreatedId:I

    .line 66
    iput v1, p0, Lorg/appcelerator/titanium/TiBaseActivity;->msgId:I

    .line 68
    return-void
.end method


# virtual methods
.method public activityOnCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 75
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 76
    return-void
.end method

.method public addConfigurationChangedListener(Lorg/appcelerator/titanium/TiBaseActivity$ConfigurationChangedListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 122
    iget-object v0, p0, Lorg/appcelerator/titanium/TiBaseActivity;->configChangedListeners:Lorg/appcelerator/titanium/util/TiWeakList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/util/TiWeakList;->add(Ljava/lang/Object;)Z

    .line 123
    return-void
.end method

.method public addWindow(Landroid/view/View;Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;)V
    .locals 1
    .parameter "v"
    .parameter "params"

    .prologue
    .line 360
    iget-object v0, p0, Lorg/appcelerator/titanium/TiBaseActivity;->layout:Lorg/appcelerator/titanium/view/TiCompositeLayout;

    invoke-virtual {v0, p1, p2}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 361
    return-void
.end method

.method protected createLayout()Lorg/appcelerator/titanium/view/TiCompositeLayout;
    .locals 4

    .prologue
    .line 199
    sget-object v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;->DEFAULT:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;

    .line 200
    .local v0, arrangement:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;
    const-string v2, "layout"

    const-string v3, ""

    invoke-virtual {p0, v2, v3}, Lorg/appcelerator/titanium/TiBaseActivity;->getIntentString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 201
    .local v1, layoutFromIntent:Ljava/lang/String;
    const-string v2, "horizontal"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 202
    sget-object v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;->HORIZONTAL:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;

    .line 206
    :cond_0
    :goto_0
    new-instance v2, Lorg/appcelerator/titanium/view/TiCompositeLayout;

    invoke-direct {v2, p0, v0}, Lorg/appcelerator/titanium/view/TiCompositeLayout;-><init>(Landroid/content/Context;Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;)V

    return-object v2

    .line 203
    :cond_1
    const-string v2, "vertical"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 204
    sget-object v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;->VERTICAL:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;

    goto :goto_0
.end method

.method public disableOrientationListener()V
    .locals 1

    .prologue
    .line 480
    iget-object v0, p0, Lorg/appcelerator/titanium/TiBaseActivity;->orientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 481
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 8
    .parameter "event"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const-string v7, "android:focus"

    const-string v6, "android:camera"

    const-string v5, "android:back"

    .line 372
    const/4 v0, 0x0

    .line 373
    .local v0, handled:Z
    iget-object v1, p0, Lorg/appcelerator/titanium/TiBaseActivity;->window:Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    if-nez v1, :cond_0

    .line 374
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    .line 436
    :goto_0
    return v1

    .line 376
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 433
    :cond_1
    :goto_1
    if-nez v0, :cond_2

    .line 434
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    :cond_2
    move v1, v0

    .line 436
    goto :goto_0

    .line 378
    :sswitch_0
    iget-object v1, p0, Lorg/appcelerator/titanium/TiBaseActivity;->window:Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    const-string v2, "android:back"

    invoke-virtual {v1, v5}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->hasListeners(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 379
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v3, :cond_3

    .line 380
    iget-object v1, p0, Lorg/appcelerator/titanium/TiBaseActivity;->window:Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    const-string v2, "android:back"

    invoke-virtual {v1, v5, v4}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->fireEvent(Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)Z

    .line 382
    :cond_3
    const/4 v0, 0x1

    goto :goto_1

    .line 387
    :sswitch_1
    iget-object v1, p0, Lorg/appcelerator/titanium/TiBaseActivity;->window:Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    const-string v2, "android:camera"

    invoke-virtual {v1, v6}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->hasListeners(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 388
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v3, :cond_4

    .line 389
    iget-object v1, p0, Lorg/appcelerator/titanium/TiBaseActivity;->window:Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    const-string v2, "android:camera"

    invoke-virtual {v1, v6, v4}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->fireEvent(Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)Z

    .line 391
    :cond_4
    const/4 v0, 0x1

    goto :goto_1

    .line 396
    :sswitch_2
    iget-object v1, p0, Lorg/appcelerator/titanium/TiBaseActivity;->window:Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    const-string v2, "android:focus"

    invoke-virtual {v1, v7}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->hasListeners(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 397
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v3, :cond_5

    .line 398
    iget-object v1, p0, Lorg/appcelerator/titanium/TiBaseActivity;->window:Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    const-string v2, "android:focus"

    invoke-virtual {v1, v7, v4}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->fireEvent(Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)Z

    .line 400
    :cond_5
    const/4 v0, 0x1

    goto :goto_1

    .line 405
    :sswitch_3
    iget-object v1, p0, Lorg/appcelerator/titanium/TiBaseActivity;->window:Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    const-string v2, "android:search"

    invoke-virtual {v1, v2}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->hasListeners(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 406
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v3, :cond_6

    .line 407
    iget-object v1, p0, Lorg/appcelerator/titanium/TiBaseActivity;->window:Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    const-string v2, "android:search"

    invoke-virtual {v1, v2, v4}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->fireEvent(Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)Z

    .line 409
    :cond_6
    const/4 v0, 0x1

    goto :goto_1

    .line 414
    :sswitch_4
    iget-object v1, p0, Lorg/appcelerator/titanium/TiBaseActivity;->window:Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    const-string v2, "android:volup"

    invoke-virtual {v1, v2}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->hasListeners(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 415
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v3, :cond_7

    .line 416
    iget-object v1, p0, Lorg/appcelerator/titanium/TiBaseActivity;->window:Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    const-string v2, "android:volup"

    invoke-virtual {v1, v2, v4}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->fireEvent(Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)Z

    .line 418
    :cond_7
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 423
    :sswitch_5
    iget-object v1, p0, Lorg/appcelerator/titanium/TiBaseActivity;->window:Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    const-string v2, "android:voldown"

    invoke-virtual {v1, v2}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->hasListeners(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 424
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v3, :cond_8

    .line 425
    iget-object v1, p0, Lorg/appcelerator/titanium/TiBaseActivity;->window:Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    const-string v2, "android:voldown"

    invoke-virtual {v1, v2, v4}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->fireEvent(Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)Z

    .line 427
    :cond_8
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 376
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x18 -> :sswitch_4
        0x19 -> :sswitch_5
        0x1b -> :sswitch_1
        0x50 -> :sswitch_2
        0x54 -> :sswitch_3
    .end sparse-switch
.end method

.method public enableOrientationListener()V
    .locals 1

    .prologue
    .line 475
    iget-object v0, p0, Lorg/appcelerator/titanium/TiBaseActivity;->orientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    .line 476
    return-void
.end method

.method public finish()V
    .locals 6

    .prologue
    .line 664
    iget-object v4, p0, Lorg/appcelerator/titanium/TiBaseActivity;->window:Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    if-eqz v4, :cond_0

    .line 665
    new-instance v2, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v2}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 666
    .local v2, data:Lorg/appcelerator/kroll/KrollDict;
    const-string v4, "source"

    iget-object v5, p0, Lorg/appcelerator/titanium/TiBaseActivity;->window:Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    invoke-virtual {v2, v4, v5}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 667
    iget-object v4, p0, Lorg/appcelerator/titanium/TiBaseActivity;->window:Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    const-string v5, "close"

    invoke-virtual {v4, v5, v2}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->fireEvent(Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)Z

    .line 670
    .end local v2           #data:Lorg/appcelerator/kroll/KrollDict;
    :cond_0
    const-string v4, "animate"

    const/4 v5, 0x1

    invoke-virtual {p0, v4, v5}, Lorg/appcelerator/titanium/TiBaseActivity;->getIntentBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 671
    .local v0, animate:Z
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->shouldFinishRootActivity()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 672
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->getTiApp()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v1

    .line 673
    .local v1, app:Lorg/appcelerator/titanium/TiApplication;
    if-eqz v1, :cond_1

    .line 674
    invoke-virtual {v1}, Lorg/appcelerator/titanium/TiApplication;->getRootActivity()Lorg/appcelerator/titanium/TiRootActivity;

    move-result-object v3

    .line 675
    .local v3, rootActivity:Lorg/appcelerator/titanium/TiRootActivity;
    if-eqz v3, :cond_1

    .line 676
    invoke-virtual {v3}, Lorg/appcelerator/titanium/TiRootActivity;->finish()V

    .line 681
    .end local v1           #app:Lorg/appcelerator/titanium/TiApplication;
    .end local v3           #rootActivity:Lorg/appcelerator/titanium/TiRootActivity;
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 682
    if-nez v0, :cond_2

    .line 683
    invoke-static {p0}, Lorg/appcelerator/titanium/util/TiUIHelper;->overridePendingTransition(Landroid/app/Activity;)V

    .line 685
    :cond_2
    return-void
.end method

.method public fireInitialFocus()V
    .locals 3

    .prologue
    .line 165
    iget-boolean v0, p0, Lorg/appcelerator/titanium/TiBaseActivity;->mustFireInitialFocus:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/appcelerator/titanium/TiBaseActivity;->window:Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    if-eqz v0, :cond_0

    .line 166
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/appcelerator/titanium/TiBaseActivity;->mustFireInitialFocus:Z

    .line 167
    iget-object v0, p0, Lorg/appcelerator/titanium/TiBaseActivity;->window:Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    const-string v1, "focus"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->fireEvent(Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)Z

    .line 169
    :cond_0
    return-void
.end method

.method protected fireOnDestroy()V
    .locals 3

    .prologue
    .line 648
    iget-boolean v0, p0, Lorg/appcelerator/titanium/TiBaseActivity;->onDestroyFired:Z

    if-nez v0, :cond_1

    .line 649
    iget-object v0, p0, Lorg/appcelerator/titanium/TiBaseActivity;->activityProxy:Lorg/appcelerator/titanium/proxy/ActivityProxy;

    if-eqz v0, :cond_0

    .line 650
    iget-object v0, p0, Lorg/appcelerator/titanium/TiBaseActivity;->activityProxy:Lorg/appcelerator/titanium/proxy/ActivityProxy;

    const-string v1, "destroy"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/titanium/proxy/ActivityProxy;->fireSyncEvent(Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)Z

    .line 652
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/appcelerator/titanium/TiBaseActivity;->onDestroyFired:Z

    .line 654
    :cond_1
    return-void
.end method

.method public getActivityProxy()Lorg/appcelerator/titanium/proxy/ActivityProxy;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lorg/appcelerator/titanium/TiBaseActivity;->activityProxy:Lorg/appcelerator/titanium/proxy/ActivityProxy;

    return-object v0
.end method

.method protected getIntentBoolean(Ljava/lang/String;Z)Z
    .locals 2
    .parameter "property"
    .parameter "defaultValue"

    .prologue
    .line 132
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 133
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {v0, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 135
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 138
    :goto_0
    return v1

    :cond_0
    move v1, p2

    goto :goto_0
.end method

.method protected getIntentInt(Ljava/lang/String;I)I
    .locals 2
    .parameter "property"
    .parameter "defaultValue"

    .prologue
    .line 143
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 144
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 145
    invoke-virtual {v0, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 146
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 149
    :goto_0
    return v1

    :cond_0
    move v1, p2

    goto :goto_0
.end method

.method protected getIntentString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "property"
    .parameter "defaultValue"

    .prologue
    .line 154
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 155
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 156
    invoke-virtual {v0, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 157
    invoke-virtual {v0, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 160
    :goto_0
    return-object v1

    :cond_0
    move-object v1, p2

    goto :goto_0
.end method

.method public getLayout()Lorg/appcelerator/titanium/view/TiCompositeLayout;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lorg/appcelerator/titanium/TiBaseActivity;->layout:Lorg/appcelerator/titanium/view/TiCompositeLayout;

    return-object v0
.end method

.method public getOrientationDegrees()I
    .locals 1

    .prologue
    .line 462
    iget v0, p0, Lorg/appcelerator/titanium/TiBaseActivity;->orientationDegrees:I

    return v0
.end method

.method protected getSupportHelper()Lorg/appcelerator/titanium/util/TiActivitySupportHelper;
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lorg/appcelerator/titanium/TiBaseActivity;->supportHelper:Lorg/appcelerator/titanium/util/TiActivitySupportHelper;

    if-nez v0, :cond_0

    .line 334
    new-instance v0, Lorg/appcelerator/titanium/util/TiActivitySupportHelper;

    invoke-direct {v0, p0}, Lorg/appcelerator/titanium/util/TiActivitySupportHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lorg/appcelerator/titanium/TiBaseActivity;->supportHelper:Lorg/appcelerator/titanium/util/TiActivitySupportHelper;

    .line 336
    :cond_0
    iget-object v0, p0, Lorg/appcelerator/titanium/TiBaseActivity;->supportHelper:Lorg/appcelerator/titanium/util/TiActivitySupportHelper;

    return-object v0
.end method

.method public getTiApp()Lorg/appcelerator/titanium/TiApplication;
    .locals 0

    .prologue
    .line 80
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->getApplication()Landroid/app/Application;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/appcelerator/titanium/TiApplication;

    return-object p0
.end method

.method public getUniqueResultCode()I
    .locals 1

    .prologue
    .line 342
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->getSupportHelper()Lorg/appcelerator/titanium/util/TiActivitySupportHelper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/util/TiActivitySupportHelper;->getUniqueResultCode()I

    move-result v0

    return v0
.end method

.method protected handleSendMessage(I)V
    .locals 5
    .parameter "msgId"

    .prologue
    const-string v4, "Unable to message creator. finishing."

    const-string v3, "TiBaseActivity"

    .line 320
    :try_start_0
    iget-object v2, p0, Lorg/appcelerator/titanium/TiBaseActivity;->messageQueue:Lorg/appcelerator/titanium/TiMessageQueue;

    invoke-virtual {v2}, Lorg/appcelerator/titanium/TiMessageQueue;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, p1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 321
    .local v1, msg:Landroid/os/Message;
    iget-object v2, p0, Lorg/appcelerator/titanium/TiBaseActivity;->messenger:Landroid/os/Messenger;

    invoke-virtual {v2, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 329
    .end local v1           #msg:Landroid/os/Message;
    :goto_0
    return-void

    .line 322
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 323
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "TiBaseActivity"

    const-string v2, "Unable to message creator. finishing."

    invoke-static {v3, v4, v0}, Lorg/appcelerator/titanium/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 324
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->finish()V

    goto :goto_0

    .line 325
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 326
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v2, "TiBaseActivity"

    const-string v2, "Unable to message creator. finishing."

    invoke-static {v3, v4, v0}, Lorg/appcelerator/titanium/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 327
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->finish()V

    goto :goto_0
.end method

.method public launchActivityForResult(Landroid/content/Intent;ILorg/appcelerator/titanium/util/TiActivityResultHandler;)V
    .locals 1
    .parameter "intent"
    .parameter "code"
    .parameter "resultHandler"

    .prologue
    .line 347
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->getSupportHelper()Lorg/appcelerator/titanium/util/TiActivitySupportHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/appcelerator/titanium/util/TiActivitySupportHelper;->launchActivityForResult(Landroid/content/Intent;ILorg/appcelerator/titanium/util/TiActivityResultHandler;)V

    .line 348
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 353
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 354
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->getSupportHelper()Lorg/appcelerator/titanium/util/TiActivitySupportHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/appcelerator/titanium/util/TiActivitySupportHelper;->onActivityResult(IILandroid/content/Intent;)V

    .line 355
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    .line 530
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 531
    iget-object v2, p0, Lorg/appcelerator/titanium/TiBaseActivity;->configChangedListeners:Lorg/appcelerator/titanium/util/TiWeakList;

    invoke-virtual {v2}, Lorg/appcelerator/titanium/util/TiWeakList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 532
    .local v1, listener:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lorg/appcelerator/titanium/TiBaseActivity$ConfigurationChangedListener;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 533
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/appcelerator/titanium/TiBaseActivity$ConfigurationChangedListener;

    invoke-interface {v2, p0, p1}, Lorg/appcelerator/titanium/TiBaseActivity$ConfigurationChangedListener;->onConfigurationChanged(Lorg/appcelerator/titanium/TiBaseActivity;Landroid/content/res/Configuration;)V

    goto :goto_0

    .line 536
    .end local v1           #listener:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lorg/appcelerator/titanium/TiBaseActivity$ConfigurationChangedListener;>;"
    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, -0x1

    const-string v5, "messenger"

    .line 264
    invoke-static {}, Lorg/appcelerator/titanium/TiMessageQueue;->getMessageQueue()Lorg/appcelerator/titanium/TiMessageQueue;

    move-result-object v1

    iput-object v1, p0, Lorg/appcelerator/titanium/TiBaseActivity;->messageQueue:Lorg/appcelerator/titanium/TiMessageQueue;

    .line 265
    sget-boolean v1, Lorg/appcelerator/titanium/TiBaseActivity;->DBG:Z

    if-eqz v1, :cond_0

    .line 266
    const-string v1, "TiBaseActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Activity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " onCreate"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    :cond_0
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 270
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_1

    .line 271
    const-string v1, "messenger"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 272
    const-string v1, "messenger"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/Messenger;

    iput-object v1, p0, Lorg/appcelerator/titanium/TiBaseActivity;->messenger:Landroid/os/Messenger;

    .line 273
    const-string v1, "msgActivityCreatedId"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lorg/appcelerator/titanium/TiBaseActivity;->msgActivityCreatedId:I

    .line 274
    const-string v1, "messageId"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lorg/appcelerator/titanium/TiBaseActivity;->msgId:I

    .line 279
    :cond_1
    invoke-static {p0}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->intializeDisplayMetrics(Landroid/app/Activity;)V

    .line 280
    new-instance v1, Lorg/appcelerator/titanium/TiBaseActivity$2;

    invoke-direct {v1, p0, p0}, Lorg/appcelerator/titanium/TiBaseActivity$2;-><init>(Lorg/appcelerator/titanium/TiBaseActivity;Landroid/content/Context;)V

    iput-object v1, p0, Lorg/appcelerator/titanium/TiBaseActivity;->orientationListener:Landroid/view/OrientationEventListener;

    .line 287
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->createLayout()Lorg/appcelerator/titanium/view/TiCompositeLayout;

    move-result-object v1

    iput-object v1, p0, Lorg/appcelerator/titanium/TiBaseActivity;->layout:Lorg/appcelerator/titanium/view/TiCompositeLayout;

    .line 288
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 289
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->getTiApp()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v1

    invoke-virtual {v1, p0}, Lorg/appcelerator/titanium/TiApplication;->setWindowHandler(Lorg/appcelerator/titanium/view/ITiWindowHandler;)V

    .line 290
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->getTiApp()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v1

    invoke-virtual {v1, p0, p0}, Lorg/appcelerator/titanium/TiApplication;->setCurrentActivity(Landroid/app/Activity;Landroid/app/Activity;)V

    .line 291
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->windowCreated()V

    .line 293
    iget-object v1, p0, Lorg/appcelerator/titanium/TiBaseActivity;->activityProxy:Lorg/appcelerator/titanium/proxy/ActivityProxy;

    if-eqz v1, :cond_2

    .line 294
    iget-object v1, p0, Lorg/appcelerator/titanium/TiBaseActivity;->activityProxy:Lorg/appcelerator/titanium/proxy/ActivityProxy;

    const-string v2, "create"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/appcelerator/titanium/proxy/ActivityProxy;->fireSyncEvent(Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)Z

    .line 297
    :cond_2
    iget-object v1, p0, Lorg/appcelerator/titanium/TiBaseActivity;->layout:Lorg/appcelerator/titanium/view/TiCompositeLayout;

    invoke-virtual {p0, v1}, Lorg/appcelerator/titanium/TiBaseActivity;->setContentView(Landroid/view/View;)V

    .line 299
    iget v1, p0, Lorg/appcelerator/titanium/TiBaseActivity;->msgActivityCreatedId:I

    invoke-virtual {p0, v1}, Lorg/appcelerator/titanium/TiBaseActivity;->sendMessage(I)V

    .line 301
    iget v1, p0, Lorg/appcelerator/titanium/TiBaseActivity;->msgId:I

    invoke-virtual {p0, v1}, Lorg/appcelerator/titanium/TiBaseActivity;->sendMessage(I)V

    .line 302
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 442
    iget-object v0, p0, Lorg/appcelerator/titanium/TiBaseActivity;->menuHelper:Lorg/appcelerator/titanium/util/TiMenuSupport;

    if-nez v0, :cond_0

    .line 443
    new-instance v0, Lorg/appcelerator/titanium/util/TiMenuSupport;

    iget-object v1, p0, Lorg/appcelerator/titanium/TiBaseActivity;->activityProxy:Lorg/appcelerator/titanium/proxy/ActivityProxy;

    invoke-direct {v0, v1}, Lorg/appcelerator/titanium/util/TiMenuSupport;-><init>(Lorg/appcelerator/titanium/proxy/ActivityProxy;)V

    iput-object v0, p0, Lorg/appcelerator/titanium/TiBaseActivity;->menuHelper:Lorg/appcelerator/titanium/util/TiMenuSupport;

    .line 445
    :cond_0
    iget-object v0, p0, Lorg/appcelerator/titanium/TiBaseActivity;->menuHelper:Lorg/appcelerator/titanium/util/TiMenuSupport;

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    invoke-virtual {v0, v1, p1}, Lorg/appcelerator/titanium/util/TiMenuSupport;->onCreateOptionsMenu(ZLandroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const-string v3, "TiBaseActivity"

    .line 616
    sget-boolean v0, Lorg/appcelerator/titanium/TiBaseActivity;->DBG:Z

    if-eqz v0, :cond_0

    .line 617
    const-string v0, "TiBaseActivity"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Activity "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " onDestroy"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 620
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->fireOnDestroy()V

    .line 622
    iget-object v0, p0, Lorg/appcelerator/titanium/TiBaseActivity;->orientationListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_1

    .line 623
    iget-object v0, p0, Lorg/appcelerator/titanium/TiBaseActivity;->orientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 625
    :cond_1
    iget-object v0, p0, Lorg/appcelerator/titanium/TiBaseActivity;->layout:Lorg/appcelerator/titanium/view/TiCompositeLayout;

    if-eqz v0, :cond_2

    .line 626
    const-string v0, "TiBaseActivity"

    const-string v0, "Layout cleanup."

    invoke-static {v3, v0}, Lorg/appcelerator/titanium/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    iget-object v0, p0, Lorg/appcelerator/titanium/TiBaseActivity;->layout:Lorg/appcelerator/titanium/view/TiCompositeLayout;

    invoke-virtual {v0}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->removeAllViews()V

    .line 628
    iput-object v2, p0, Lorg/appcelerator/titanium/TiBaseActivity;->layout:Lorg/appcelerator/titanium/view/TiCompositeLayout;

    .line 630
    :cond_2
    iget-object v0, p0, Lorg/appcelerator/titanium/TiBaseActivity;->window:Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    if-eqz v0, :cond_3

    .line 631
    iget-object v0, p0, Lorg/appcelerator/titanium/TiBaseActivity;->window:Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    invoke-virtual {v0}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->closeFromActivity()V

    .line 632
    iput-object v2, p0, Lorg/appcelerator/titanium/TiBaseActivity;->window:Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    .line 634
    :cond_3
    iget-object v0, p0, Lorg/appcelerator/titanium/TiBaseActivity;->menuHelper:Lorg/appcelerator/titanium/util/TiMenuSupport;

    if-eqz v0, :cond_4

    .line 635
    iget-object v0, p0, Lorg/appcelerator/titanium/TiBaseActivity;->menuHelper:Lorg/appcelerator/titanium/util/TiMenuSupport;

    invoke-virtual {v0}, Lorg/appcelerator/titanium/util/TiMenuSupport;->destroy()V

    .line 636
    iput-object v2, p0, Lorg/appcelerator/titanium/TiBaseActivity;->menuHelper:Lorg/appcelerator/titanium/util/TiMenuSupport;

    .line 638
    :cond_4
    iget-object v0, p0, Lorg/appcelerator/titanium/TiBaseActivity;->activityProxy:Lorg/appcelerator/titanium/proxy/ActivityProxy;

    if-eqz v0, :cond_5

    .line 639
    iget-object v0, p0, Lorg/appcelerator/titanium/TiBaseActivity;->activityProxy:Lorg/appcelerator/titanium/proxy/ActivityProxy;

    invoke-virtual {v0}, Lorg/appcelerator/titanium/proxy/ActivityProxy;->release()V

    .line 640
    iput-object v2, p0, Lorg/appcelerator/titanium/TiBaseActivity;->activityProxy:Lorg/appcelerator/titanium/proxy/ActivityProxy;

    .line 642
    :cond_5
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 451
    iget-object v0, p0, Lorg/appcelerator/titanium/TiBaseActivity;->menuHelper:Lorg/appcelerator/titanium/util/TiMenuSupport;

    invoke-virtual {v0, p1}, Lorg/appcelerator/titanium/util/TiMenuSupport;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method protected onOrientationChanged(I)V
    .locals 4
    .parameter "degrees"

    .prologue
    const/4 v3, -0x1

    .line 488
    iput p1, p0, Lorg/appcelerator/titanium/TiBaseActivity;->orientationDegrees:I

    .line 489
    if-eq p1, v3, :cond_0

    .line 490
    iget-object v1, p0, Lorg/appcelerator/titanium/TiBaseActivity;->window:Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    if-eqz v1, :cond_0

    .line 491
    iget-object v1, p0, Lorg/appcelerator/titanium/TiBaseActivity;->window:Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    invoke-virtual {v1}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->getOrientationModes()[I

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_0

    .line 493
    const/16 v1, 0xe1

    if-lt p1, v1, :cond_1

    const/16 v1, 0x13b

    if-ge p1, v1, :cond_1

    .line 496
    const/4 v0, 0x0

    .line 500
    .local v0, currentOrientation:I
    :goto_0
    iget-object v1, p0, Lorg/appcelerator/titanium/TiBaseActivity;->window:Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    invoke-virtual {v1, v0}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->isOrientationMode(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 502
    invoke-virtual {p0, v0}, Lorg/appcelerator/titanium/TiBaseActivity;->setRequestedOrientation(I)V

    .line 503
    iget v1, p0, Lorg/appcelerator/titanium/TiBaseActivity;->orientationOverride:I

    if-eq v1, v3, :cond_0

    .line 505
    iput v3, p0, Lorg/appcelerator/titanium/TiBaseActivity;->orientationOverride:I

    .line 525
    .end local v0           #currentOrientation:I
    :cond_0
    :goto_1
    return-void

    .line 498
    :cond_1
    const/4 v0, 0x1

    .restart local v0       #currentOrientation:I
    goto :goto_0

    .line 510
    :cond_2
    iget v1, p0, Lorg/appcelerator/titanium/TiBaseActivity;->orientationOverride:I

    if-ne v0, v1, :cond_3

    .line 511
    invoke-virtual {p0, v0}, Lorg/appcelerator/titanium/TiBaseActivity;->setRequestedOrientation(I)V

    goto :goto_1

    .line 515
    :cond_3
    iget-object v1, p0, Lorg/appcelerator/titanium/TiBaseActivity;->window:Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    invoke-virtual {v1}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->getOrientationModes()[I

    move-result-object v1

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-static {v1}, Lorg/appcelerator/titanium/util/TiUIHelper;->convertToAndroidOrientation(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/appcelerator/titanium/TiBaseActivity;->setRequestedOrientation(I)V

    .line 516
    iget v1, p0, Lorg/appcelerator/titanium/TiBaseActivity;->orientationOverride:I

    if-eq v1, v3, :cond_0

    .line 518
    iput v3, p0, Lorg/appcelerator/titanium/TiBaseActivity;->orientationOverride:I

    goto :goto_1
.end method

.method protected onPause()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 541
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 542
    sget-boolean v0, Lorg/appcelerator/titanium/TiBaseActivity;->DBG:Z

    if-eqz v0, :cond_0

    .line 543
    const-string v0, "TiBaseActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onPause"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    :cond_0
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->getTiApp()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/appcelerator/titanium/TiApplication;->setWindowHandler(Lorg/appcelerator/titanium/view/ITiWindowHandler;)V

    .line 547
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->getTiApp()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v0

    invoke-virtual {v0, p0, v3}, Lorg/appcelerator/titanium/TiApplication;->setCurrentActivity(Landroid/app/Activity;Landroid/app/Activity;)V

    .line 548
    iget-object v0, p0, Lorg/appcelerator/titanium/TiBaseActivity;->activityProxy:Lorg/appcelerator/titanium/proxy/ActivityProxy;

    if-eqz v0, :cond_1

    .line 549
    iget-object v0, p0, Lorg/appcelerator/titanium/TiBaseActivity;->activityProxy:Lorg/appcelerator/titanium/proxy/ActivityProxy;

    const-string v1, "pause"

    invoke-virtual {v0, v1, v3}, Lorg/appcelerator/titanium/proxy/ActivityProxy;->fireSyncEvent(Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)Z

    .line 551
    :cond_1
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 457
    iget-object v0, p0, Lorg/appcelerator/titanium/TiBaseActivity;->menuHelper:Lorg/appcelerator/titanium/util/TiMenuSupport;

    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    invoke-virtual {v0, v1, p1}, Lorg/appcelerator/titanium/util/TiMenuSupport;->onPrepareOptionsMenu(ZLandroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onRestart()V
    .locals 3

    .prologue
    .line 604
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 605
    sget-boolean v0, Lorg/appcelerator/titanium/TiBaseActivity;->DBG:Z

    if-eqz v0, :cond_0

    .line 606
    const-string v0, "TiBaseActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onRestart"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    :cond_0
    iget-object v0, p0, Lorg/appcelerator/titanium/TiBaseActivity;->activityProxy:Lorg/appcelerator/titanium/proxy/ActivityProxy;

    if-eqz v0, :cond_1

    .line 609
    iget-object v0, p0, Lorg/appcelerator/titanium/TiBaseActivity;->activityProxy:Lorg/appcelerator/titanium/proxy/ActivityProxy;

    const-string v1, "restart"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/titanium/proxy/ActivityProxy;->fireSyncEvent(Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)Z

    .line 611
    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 556
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 557
    sget-boolean v0, Lorg/appcelerator/titanium/TiBaseActivity;->DBG:Z

    if-eqz v0, :cond_0

    .line 558
    const-string v0, "TiBaseActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onResume"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    :cond_0
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->getTiApp()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/appcelerator/titanium/TiApplication;->setWindowHandler(Lorg/appcelerator/titanium/view/ITiWindowHandler;)V

    .line 561
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->getTiApp()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v0

    invoke-virtual {v0, p0, p0}, Lorg/appcelerator/titanium/TiApplication;->setCurrentActivity(Landroid/app/Activity;Landroid/app/Activity;)V

    .line 562
    iget-object v0, p0, Lorg/appcelerator/titanium/TiBaseActivity;->activityProxy:Lorg/appcelerator/titanium/proxy/ActivityProxy;

    if-eqz v0, :cond_1

    .line 563
    iget-object v0, p0, Lorg/appcelerator/titanium/TiBaseActivity;->activityProxy:Lorg/appcelerator/titanium/proxy/ActivityProxy;

    const-string v1, "resume"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/titanium/proxy/ActivityProxy;->fireSyncEvent(Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)Z

    .line 565
    :cond_1
    return-void
.end method

.method protected onStart()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 570
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 571
    sget-boolean v0, Lorg/appcelerator/titanium/TiBaseActivity;->DBG:Z

    if-eqz v0, :cond_0

    .line 572
    const-string v0, "TiBaseActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onStart"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    :cond_0
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->updateTitle()V

    .line 576
    iget-object v0, p0, Lorg/appcelerator/titanium/TiBaseActivity;->window:Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    if-eqz v0, :cond_2

    .line 577
    iget-object v0, p0, Lorg/appcelerator/titanium/TiBaseActivity;->window:Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    const-string v1, "focus"

    invoke-virtual {v0, v1, v3}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->fireEvent(Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)Z

    .line 581
    :goto_0
    iget-object v0, p0, Lorg/appcelerator/titanium/TiBaseActivity;->activityProxy:Lorg/appcelerator/titanium/proxy/ActivityProxy;

    if-eqz v0, :cond_1

    .line 582
    iget-object v0, p0, Lorg/appcelerator/titanium/TiBaseActivity;->activityProxy:Lorg/appcelerator/titanium/proxy/ActivityProxy;

    const-string v1, "start"

    invoke-virtual {v0, v1, v3}, Lorg/appcelerator/titanium/proxy/ActivityProxy;->fireSyncEvent(Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)Z

    .line 584
    :cond_1
    return-void

    .line 579
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/appcelerator/titanium/TiBaseActivity;->mustFireInitialFocus:Z

    goto :goto_0
.end method

.method protected onStop()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 589
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 590
    sget-boolean v0, Lorg/appcelerator/titanium/TiBaseActivity;->DBG:Z

    if-eqz v0, :cond_0

    .line 591
    const-string v0, "TiBaseActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onStop"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    :cond_0
    iget-object v0, p0, Lorg/appcelerator/titanium/TiBaseActivity;->window:Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    if-eqz v0, :cond_1

    .line 594
    iget-object v0, p0, Lorg/appcelerator/titanium/TiBaseActivity;->window:Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    const-string v1, "blur"

    invoke-virtual {v0, v1, v3}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->fireEvent(Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)Z

    .line 596
    :cond_1
    iget-object v0, p0, Lorg/appcelerator/titanium/TiBaseActivity;->activityProxy:Lorg/appcelerator/titanium/proxy/ActivityProxy;

    if-eqz v0, :cond_2

    .line 597
    iget-object v0, p0, Lorg/appcelerator/titanium/TiBaseActivity;->activityProxy:Lorg/appcelerator/titanium/proxy/ActivityProxy;

    const-string v1, "stop"

    invoke-virtual {v0, v1, v3}, Lorg/appcelerator/titanium/proxy/ActivityProxy;->fireSyncEvent(Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)Z

    .line 599
    :cond_2
    return-void
.end method

.method public overrideOrientation(I)V
    .locals 0
    .parameter "orientation"

    .prologue
    .line 469
    iput p1, p0, Lorg/appcelerator/titanium/TiBaseActivity;->orientationOverride:I

    .line 470
    invoke-virtual {p0, p1}, Lorg/appcelerator/titanium/TiBaseActivity;->setRequestedOrientation(I)V

    .line 471
    return-void
.end method

.method public removeConfigurationChangedListener(Lorg/appcelerator/titanium/TiBaseActivity$ConfigurationChangedListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 127
    iget-object v0, p0, Lorg/appcelerator/titanium/TiBaseActivity;->configChangedListeners:Lorg/appcelerator/titanium/util/TiWeakList;

    invoke-virtual {v0, p1}, Lorg/appcelerator/titanium/util/TiWeakList;->remove(Ljava/lang/Object;)Z

    .line 128
    return-void
.end method

.method public removeWindow(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 366
    iget-object v0, p0, Lorg/appcelerator/titanium/TiBaseActivity;->layout:Lorg/appcelerator/titanium/view/TiCompositeLayout;

    invoke-virtual {v0, p1}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->removeView(Landroid/view/View;)V

    .line 367
    return-void
.end method

.method protected sendMessage(I)V
    .locals 2
    .parameter "msgId"

    .prologue
    .line 306
    iget-object v0, p0, Lorg/appcelerator/titanium/TiBaseActivity;->messenger:Landroid/os/Messenger;

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 315
    :cond_0
    :goto_0
    return-void

    .line 309
    :cond_1
    iget-object v0, p0, Lorg/appcelerator/titanium/TiBaseActivity;->messageQueue:Lorg/appcelerator/titanium/TiMessageQueue;

    new-instance v1, Lorg/appcelerator/titanium/TiBaseActivity$3;

    invoke-direct {v1, p0, p1}, Lorg/appcelerator/titanium/TiBaseActivity$3;-><init>(Lorg/appcelerator/titanium/TiBaseActivity;I)V

    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/TiMessageQueue;->post(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public setActivityProxy(Lorg/appcelerator/titanium/proxy/ActivityProxy;)V
    .locals 0
    .parameter "proxy"

    .prologue
    .line 112
    iput-object p1, p0, Lorg/appcelerator/titanium/TiBaseActivity;->activityProxy:Lorg/appcelerator/titanium/proxy/ActivityProxy;

    .line 113
    return-void
.end method

.method protected setFullscreen(Z)V
    .locals 2
    .parameter "fullscreen"

    .prologue
    const/16 v1, 0x400

    .line 211
    if-eqz p1, :cond_0

    .line 212
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 216
    :cond_0
    return-void
.end method

.method protected setNavBarHidden(Z)V
    .locals 1
    .parameter "hidden"

    .prologue
    .line 220
    if-nez p1, :cond_0

    .line 221
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lorg/appcelerator/titanium/TiBaseActivity;->requestWindowFeature(I)Z

    .line 222
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lorg/appcelerator/titanium/TiBaseActivity;->requestWindowFeature(I)Z

    .line 223
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/appcelerator/titanium/TiBaseActivity;->requestWindowFeature(I)Z

    .line 224
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lorg/appcelerator/titanium/TiBaseActivity;->requestWindowFeature(I)Z

    .line 228
    :goto_0
    return-void

    .line 226
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/appcelerator/titanium/TiBaseActivity;->requestWindowFeature(I)Z

    goto :goto_0
.end method

.method public setWindowProxy(Lorg/appcelerator/titanium/proxy/TiWindowProxy;)V
    .locals 0
    .parameter "proxy"

    .prologue
    .line 85
    iput-object p1, p0, Lorg/appcelerator/titanium/TiBaseActivity;->window:Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    .line 86
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->updateTitle()V

    .line 87
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->updateOrientation()V

    .line 88
    return-void
.end method

.method protected shouldFinishRootActivity()Z
    .locals 2

    .prologue
    .line 658
    const-string v0, "finishRoot"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/appcelerator/titanium/TiBaseActivity;->getIntentBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public updateOrientation()V
    .locals 3

    .prologue
    .line 92
    iget-object v1, p0, Lorg/appcelerator/titanium/TiBaseActivity;->window:Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    if-nez v1, :cond_1

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    iget-object v1, p0, Lorg/appcelerator/titanium/TiBaseActivity;->window:Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    invoke-virtual {v1}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->getOrientationModes()[I

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_0

    .line 96
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v0, v1, Landroid/content/res/Configuration;->orientation:I

    .line 97
    .local v0, orientation:I
    iget-object v1, p0, Lorg/appcelerator/titanium/TiBaseActivity;->window:Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    invoke-virtual {v1, v0}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->isOrientationMode(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 98
    invoke-virtual {p0, v0}, Lorg/appcelerator/titanium/TiBaseActivity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 100
    :cond_2
    iget-object v1, p0, Lorg/appcelerator/titanium/TiBaseActivity;->window:Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    invoke-virtual {v1}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->getOrientationModes()[I

    move-result-object v1

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-static {v1}, Lorg/appcelerator/titanium/util/TiUIHelper;->convertToAndroidOrientation(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/appcelerator/titanium/TiBaseActivity;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method protected updateTitle()V
    .locals 6

    .prologue
    const-string v5, "title"

    .line 173
    iget-object v3, p0, Lorg/appcelerator/titanium/TiBaseActivity;->window:Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    if-nez v3, :cond_1

    .line 194
    :cond_0
    :goto_0
    return-void

    .line 175
    :cond_1
    iget-object v3, p0, Lorg/appcelerator/titanium/TiBaseActivity;->window:Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    const-string v4, "title"

    invoke-virtual {v3, v5}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 176
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 177
    .local v2, oldTitle:Ljava/lang/String;
    iget-object v3, p0, Lorg/appcelerator/titanium/TiBaseActivity;->window:Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    const-string v4, "title"

    invoke-virtual {v3, v5}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 178
    .local v1, newTitle:Ljava/lang/String;
    if-nez v2, :cond_2

    .line 179
    const-string v2, ""

    .line 181
    :cond_2
    if-nez v1, :cond_3

    .line 182
    const-string v1, ""

    .line 184
    :cond_3
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 185
    move-object v0, v1

    .line 186
    .local v0, fnewTitle:Ljava/lang/String;
    new-instance v3, Lorg/appcelerator/titanium/TiBaseActivity$1;

    invoke-direct {v3, p0, v0}, Lorg/appcelerator/titanium/TiBaseActivity$1;-><init>(Lorg/appcelerator/titanium/TiBaseActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lorg/appcelerator/titanium/TiBaseActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected windowCreated()V
    .locals 13

    .prologue
    const/4 v12, -0x1

    const/4 v11, 0x0

    .line 233
    const-string v8, "fullscreen"

    invoke-virtual {p0, v8, v11}, Lorg/appcelerator/titanium/TiBaseActivity;->getIntentBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 234
    .local v1, fullscreen:Z
    const-string v8, "navBarHidden"

    invoke-virtual {p0, v8, v11}, Lorg/appcelerator/titanium/TiBaseActivity;->getIntentBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 235
    .local v4, navBarHidden:Z
    const-string v8, "modal"

    invoke-virtual {p0, v8, v11}, Lorg/appcelerator/titanium/TiBaseActivity;->getIntentBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 236
    .local v3, modal:Z
    const-string v8, "windowSoftInputMode"

    invoke-virtual {p0, v8, v12}, Lorg/appcelerator/titanium/TiBaseActivity;->getIntentInt(Ljava/lang/String;I)I

    move-result v5

    .line 237
    .local v5, softInputMode:I
    if-eq v5, v12, :cond_3

    const/4 v8, 0x1

    move v2, v8

    .line 239
    .local v2, hasSoftInputMode:Z
    :goto_0
    if-nez v3, :cond_4

    .line 240
    invoke-virtual {p0, v1}, Lorg/appcelerator/titanium/TiBaseActivity;->setFullscreen(Z)V

    .line 241
    invoke-virtual {p0, v4}, Lorg/appcelerator/titanium/TiBaseActivity;->setNavBarHidden(Z)V

    .line 247
    :goto_1
    if-eqz v2, :cond_1

    .line 248
    sget-boolean v8, Lorg/appcelerator/titanium/TiBaseActivity;->DBG:Z

    if-eqz v8, :cond_0

    .line 249
    const-string v8, "TiBaseActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "windowSoftInputMode: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    :cond_0
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 254
    :cond_1
    const-string v8, "useActivityWindow"

    invoke-virtual {p0, v8, v11}, Lorg/appcelerator/titanium/TiBaseActivity;->getIntentBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 255
    .local v6, useActivityWindow:Z
    if-eqz v6, :cond_2

    .line 256
    const-string v8, "windowId"

    invoke-virtual {p0, v8, v12}, Lorg/appcelerator/titanium/TiBaseActivity;->getIntentInt(Ljava/lang/String;I)I

    move-result v7

    .line 257
    .local v7, windowId:I
    invoke-static {p0, v7}, Lorg/appcelerator/titanium/TiActivityWindows;->windowCreated(Lorg/appcelerator/titanium/TiBaseActivity;I)V

    .line 259
    .end local v7           #windowId:I
    :cond_2
    return-void

    .end local v2           #hasSoftInputMode:Z
    .end local v6           #useActivityWindow:Z
    :cond_3
    move v2, v11

    .line 237
    goto :goto_0

    .line 243
    .restart local v2       #hasSoftInputMode:Z
    :cond_4
    const/4 v0, 0x4

    .line 244
    .local v0, flags:I
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {v8, v0, v0}, Landroid/view/Window;->setFlags(II)V

    goto :goto_1
.end method
