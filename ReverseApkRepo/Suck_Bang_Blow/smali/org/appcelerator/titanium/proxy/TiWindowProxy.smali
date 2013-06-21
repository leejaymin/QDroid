.class public abstract Lorg/appcelerator/titanium/proxy/TiWindowProxy;
.super Lorg/appcelerator/titanium/proxy/TiViewProxy;
.source "TiWindowProxy.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field private static final LCAT:Ljava/lang/String; = "TiWindowProxy"

.field private static final MSG_CLOSE:I = 0x44d

.field private static final MSG_FIRST_ID:I = 0x3e8

.field protected static final MSG_LAST_ID:I = 0x7cf

.field private static final MSG_OPEN:I = 0x44c


# instance fields
.field protected focused:Z

.field protected fullscreen:Z

.field protected inTab:Z

.field protected modal:Z

.field protected opened:Z

.field protected opening:Z

.field protected orientationModes:[I

.field protected restoreFullscreen:Z

.field protected tab:Lorg/appcelerator/titanium/proxy/TiViewProxy;

.field protected tabGroup:Lorg/appcelerator/titanium/proxy/TiViewProxy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    sget-boolean v0, Lorg/appcelerator/titanium/util/TiConfig;->LOGD:Z

    sput-boolean v0, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->DBG:Z

    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 2
    .parameter "tiContext"

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;-><init>(Lorg/appcelerator/titanium/TiContext;)V

    .line 43
    new-array v0, v1, [I

    iput-object v0, p0, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->orientationModes:[I

    .line 52
    iput-boolean v1, p0, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->inTab:Z

    .line 53
    return-void
.end method


# virtual methods
.method public close(Ljava/lang/Object;)V
    .locals 4
    .parameter "arg"
        .annotation runtime Lorg/appcelerator/kroll/annotations/Kroll$argument;
            optional = true
        .end annotation
    .end parameter

    .prologue
    .line 112
    iget-boolean v3, p0, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->opened:Z

    if-nez v3, :cond_0

    .line 132
    :goto_0
    return-void

    .line 114
    :cond_0
    const/4 v2, 0x0

    .line 115
    .local v2, options:Lorg/appcelerator/kroll/KrollDict;
    const/4 v1, 0x0

    .line 117
    .local v1, animation:Lorg/appcelerator/titanium/view/TiAnimation;
    if-eqz p1, :cond_1

    .line 118
    instance-of v3, p1, Lorg/appcelerator/kroll/KrollDict;

    if-eqz v3, :cond_2

    .line 119
    move-object v0, p1

    check-cast v0, Lorg/appcelerator/kroll/KrollDict;

    move-object v2, v0

    .line 126
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v3

    invoke-virtual {v3}, Lorg/appcelerator/titanium/TiContext;->isUIThread()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 127
    invoke-virtual {p0, v2}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->handleClose(Lorg/appcelerator/kroll/KrollDict;)V

    goto :goto_0

    .line 120
    :cond_2
    instance-of v3, p1, Lorg/appcelerator/titanium/view/TiAnimation;

    if-eqz v3, :cond_1

    .line 121
    new-instance v2, Lorg/appcelerator/kroll/KrollDict;

    .end local v2           #options:Lorg/appcelerator/kroll/KrollDict;
    invoke-direct {v2}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 122
    .restart local v2       #options:Lorg/appcelerator/kroll/KrollDict;
    const-string v3, "_anim"

    invoke-virtual {v2, v3, v1}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 131
    :cond_3
    const/16 v3, 0x44d

    invoke-virtual {p0, v3, v2}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->sendBlockingUiMessage(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public closeFromActivity()V
    .locals 2

    .prologue
    .line 136
    iget-boolean v1, p0, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->opened:Z

    if-nez v1, :cond_1

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 137
    :cond_1
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->releaseViews()V

    .line 138
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->opened:Z

    .line 139
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v0

    .line 140
    .local v0, context:Lorg/appcelerator/titanium/TiContext;
    iget-object v1, p0, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->creatingContext:Lorg/appcelerator/titanium/TiContext;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->creatingContext:Lorg/appcelerator/titanium/TiContext;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 141
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->switchToCreatingContext()V

    goto :goto_0
.end method

.method public createView(Landroid/app/Activity;)Lorg/appcelerator/titanium/view/TiUIView;
    .locals 2
    .parameter "activity"

    .prologue
    .line 58
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Windows are created during open"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getActivity(Lorg/appcelerator/kroll/KrollInvocation;)Lorg/appcelerator/titanium/proxy/ActivityProxy;
    .locals 1
    .parameter "invocation"

    .prologue
    .line 212
    invoke-virtual {p1}, Lorg/appcelerator/kroll/KrollInvocation;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->getActivity(Lorg/appcelerator/titanium/TiContext;)Lorg/appcelerator/titanium/proxy/ActivityProxy;

    move-result-object v0

    return-object v0
.end method

.method public getActivity(Lorg/appcelerator/titanium/TiContext;)Lorg/appcelerator/titanium/proxy/ActivityProxy;
    .locals 6
    .parameter "tiContext"

    .prologue
    const-string v5, "activity"

    .line 217
    const-string v4, "activity"

    invoke-virtual {p0, v5}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 218
    .local v1, activityObject:Ljava/lang/Object;
    const/4 v2, 0x0

    .line 219
    .local v2, activityProxy:Lorg/appcelerator/titanium/proxy/ActivityProxy;
    if-nez v1, :cond_1

    .line 220
    new-instance v2, Lorg/appcelerator/titanium/proxy/ActivityProxy;

    .end local v2           #activityProxy:Lorg/appcelerator/titanium/proxy/ActivityProxy;
    invoke-direct {v2, p1}, Lorg/appcelerator/titanium/proxy/ActivityProxy;-><init>(Lorg/appcelerator/titanium/TiContext;)V

    .line 221
    .restart local v2       #activityProxy:Lorg/appcelerator/titanium/proxy/ActivityProxy;
    const-string v4, "activity"

    invoke-virtual {p0, v5, v2}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 230
    :cond_0
    :goto_0
    return-object v2

    .line 222
    :cond_1
    instance-of v4, v1, Lorg/appcelerator/kroll/KrollDict;

    if-eqz v4, :cond_2

    .line 223
    move-object v0, v1

    check-cast v0, Lorg/appcelerator/kroll/KrollDict;

    move-object v3, v0

    .line 224
    .local v3, options:Lorg/appcelerator/kroll/KrollDict;
    new-instance v2, Lorg/appcelerator/titanium/proxy/ActivityProxy;

    .end local v2           #activityProxy:Lorg/appcelerator/titanium/proxy/ActivityProxy;
    invoke-direct {v2, p1}, Lorg/appcelerator/titanium/proxy/ActivityProxy;-><init>(Lorg/appcelerator/titanium/TiContext;)V

    .line 225
    .restart local v2       #activityProxy:Lorg/appcelerator/titanium/proxy/ActivityProxy;
    invoke-virtual {v2, v3}, Lorg/appcelerator/titanium/proxy/ActivityProxy;->handleCreationDict(Lorg/appcelerator/kroll/KrollDict;)V

    .line 226
    const-string v4, "activity"

    invoke-virtual {p0, v5, v2}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 227
    .end local v3           #options:Lorg/appcelerator/kroll/KrollDict;
    :cond_2
    instance-of v4, v1, Lorg/appcelerator/titanium/proxy/ActivityProxy;

    if-eqz v4, :cond_0

    .line 228
    move-object v0, v1

    check-cast v0, Lorg/appcelerator/titanium/proxy/ActivityProxy;

    move-object v2, v0

    goto :goto_0
.end method

.method public getOrientationModes()[I
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->orientationModes:[I

    return-object v0
.end method

.method public getTabGroupProxy()Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->tabGroup:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    return-object v0
.end method

.method public getTabProxy()Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->tab:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    return-object v0
.end method

.method protected abstract handleClose(Lorg/appcelerator/kroll/KrollDict;)V
.end method

.method protected abstract handleGetActivity()Landroid/app/Activity;
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 64
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 78
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->handleMessage(Landroid/os/Message;)Z

    move-result v1

    :goto_0
    return v1

    .line 66
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/appcelerator/titanium/util/AsyncResult;

    .line 67
    .local v0, result:Lorg/appcelerator/titanium/util/AsyncResult;
    invoke-virtual {v0}, Lorg/appcelerator/titanium/util/AsyncResult;->getArg()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/appcelerator/kroll/KrollDict;

    invoke-virtual {p0, v1}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->handleOpen(Lorg/appcelerator/kroll/KrollDict;)V

    .line 68
    invoke-virtual {v0, v3}, Lorg/appcelerator/titanium/util/AsyncResult;->setResult(Ljava/lang/Object;)V

    move v1, v2

    .line 69
    goto :goto_0

    .line 72
    .end local v0           #result:Lorg/appcelerator/titanium/util/AsyncResult;
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/appcelerator/titanium/util/AsyncResult;

    .line 73
    .restart local v0       #result:Lorg/appcelerator/titanium/util/AsyncResult;
    invoke-virtual {v0}, Lorg/appcelerator/titanium/util/AsyncResult;->getArg()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/appcelerator/kroll/KrollDict;

    invoke-virtual {p0, v1}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->handleClose(Lorg/appcelerator/kroll/KrollDict;)V

    .line 74
    invoke-virtual {v0, v3}, Lorg/appcelerator/titanium/util/AsyncResult;->setResult(Ljava/lang/Object;)V

    move v1, v2

    .line 75
    goto :goto_0

    .line 64
    :pswitch_data_0
    .packed-switch 0x44c
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected abstract handleOpen(Lorg/appcelerator/kroll/KrollDict;)V
.end method

.method public handleToImage()Lorg/appcelerator/kroll/KrollDict;
    .locals 3

    .prologue
    .line 173
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v0

    iget-object v1, p0, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->properties:Lorg/appcelerator/kroll/KrollDict;

    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->getTiContext()Lorg/appcelerator/titanium/TiContext;

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

.method public hideTabBar()V
    .locals 0

    .prologue
    .line 169
    return-void
.end method

.method public isOrientationMode(I)Z
    .locals 7
    .parameter "orientation"

    .prologue
    .line 196
    iget-object v6, p0, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->orientationModes:[I

    array-length v6, v6

    if-nez v6, :cond_0

    const/4 v6, 0x1

    .line 206
    :goto_0
    return v6

    .line 198
    :cond_0
    const/4 v0, 0x0

    .line 199
    .local v0, allowOrientationChange:Z
    invoke-static {p1}, Lorg/appcelerator/titanium/util/TiUIHelper;->convertToTiOrientation(I)I

    move-result v2

    .line 200
    .local v2, currentMode:I
    iget-object v1, p0, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->orientationModes:[I

    .local v1, arr$:[I
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_1

    aget v5, v1, v3

    .line 201
    .local v5, mode:I
    if-ne v5, v2, :cond_2

    .line 202
    const/4 v0, 0x1

    .end local v5           #mode:I
    :cond_1
    move v6, v0

    .line 206
    goto :goto_0

    .line 200
    .restart local v5       #mode:I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public open(Ljava/lang/Object;)V
    .locals 4
    .parameter "arg"
        .annotation runtime Lorg/appcelerator/kroll/annotations/Kroll$argument;
            optional = true
        .end annotation
    .end parameter

    .prologue
    .line 86
    iget-boolean v3, p0, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->opened:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->opening:Z

    if-eqz v3, :cond_1

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 88
    :cond_1
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->opening:Z

    .line 89
    const/4 v2, 0x0

    .line 90
    .local v2, options:Lorg/appcelerator/kroll/KrollDict;
    const/4 v1, 0x0

    .line 92
    .local v1, animation:Lorg/appcelerator/titanium/view/TiAnimation;
    if-eqz p1, :cond_2

    .line 93
    instance-of v3, p1, Lorg/appcelerator/kroll/KrollDict;

    if-eqz v3, :cond_3

    .line 94
    move-object v0, p1

    check-cast v0, Lorg/appcelerator/kroll/KrollDict;

    move-object v2, v0

    .line 101
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v3

    invoke-virtual {v3}, Lorg/appcelerator/titanium/TiContext;->isUIThread()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 102
    invoke-virtual {p0, v2}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->handleOpen(Lorg/appcelerator/kroll/KrollDict;)V

    goto :goto_0

    .line 95
    :cond_3
    instance-of v3, p1, Lorg/appcelerator/titanium/view/TiAnimation;

    if-eqz v3, :cond_2

    .line 96
    new-instance v2, Lorg/appcelerator/kroll/KrollDict;

    .end local v2           #options:Lorg/appcelerator/kroll/KrollDict;
    invoke-direct {v2}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 97
    .restart local v2       #options:Lorg/appcelerator/kroll/KrollDict;
    const-string v3, "_anim"

    invoke-virtual {v2, v3, v1}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 105
    :cond_4
    const/16 v3, 0x44c

    invoke-virtual {p0, v3, v2}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->sendBlockingUiMessage(ILjava/lang/Object;)Ljava/lang/Object;

    .line 106
    const/4 v3, 0x0

    iput-boolean v3, p0, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->opening:Z

    goto :goto_0
.end method

.method public setOrientationModes([I)V
    .locals 4
    .parameter "modes"

    .prologue
    .line 180
    iput-object p1, p0, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->orientationModes:[I

    .line 181
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->handleGetActivity()Landroid/app/Activity;

    move-result-object v1

    .line 182
    .local v1, activity:Landroid/app/Activity;
    instance-of v3, v1, Lorg/appcelerator/titanium/TiBaseActivity;

    if-eqz v3, :cond_0

    .line 183
    move-object v0, v1

    check-cast v0, Lorg/appcelerator/titanium/TiBaseActivity;

    move-object v2, v0

    .line 184
    .local v2, tiActivity:Lorg/appcelerator/titanium/TiBaseActivity;
    invoke-virtual {v2}, Lorg/appcelerator/titanium/TiBaseActivity;->updateOrientation()V

    .line 186
    .end local v2           #tiActivity:Lorg/appcelerator/titanium/TiBaseActivity;
    :cond_0
    return-void
.end method

.method public setTabGroupProxy(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 0
    .parameter "tabGroupProxy"

    .prologue
    .line 157
    iput-object p1, p0, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->tabGroup:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .line 158
    return-void
.end method

.method public setTabProxy(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 0
    .parameter "tabProxy"

    .prologue
    .line 147
    iput-object p1, p0, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->tab:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .line 148
    return-void
.end method
