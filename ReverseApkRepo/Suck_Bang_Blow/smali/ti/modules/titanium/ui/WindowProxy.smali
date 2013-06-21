.class public Lti/modules/titanium/ui/WindowProxy;
.super Lorg/appcelerator/titanium/proxy/TiWindowProxy;
.source "WindowProxy.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field private static final LCAT:Ljava/lang/String; = "WindowProxy"

.field private static final MSG_FINISH_OPEN:I = 0x834

.field private static final MSG_FIRST_ID:I = 0x7d0

.field protected static final MSG_LAST_ID:I = 0xbb7


# instance fields
.field views:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/appcelerator/titanium/proxy/TiViewProxy;",
            ">;"
        }
    .end annotation
.end field

.field weakActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field windowId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    sget-boolean v0, Lorg/appcelerator/titanium/util/TiConfig;->LOGD:Z

    sput-boolean v0, Lti/modules/titanium/ui/WindowProxy;->DBG:Z

    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 0
    .parameter "tiContext"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;-><init>(Lorg/appcelerator/titanium/TiContext;)V

    .line 48
    return-void
.end method

.method static synthetic access$002(Lti/modules/titanium/ui/WindowProxy;Lorg/appcelerator/titanium/view/TiUIView;)Lorg/appcelerator/titanium/view/TiUIView;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput-object p1, p0, Lti/modules/titanium/ui/WindowProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    return-object p1
.end method

.method static synthetic access$100(Lti/modules/titanium/ui/WindowProxy;)Lorg/appcelerator/titanium/view/TiUIView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lti/modules/titanium/ui/WindowProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    return-object v0
.end method

.method static synthetic access$202(Lti/modules/titanium/ui/WindowProxy;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput-boolean p1, p0, Lti/modules/titanium/ui/WindowProxy;->opened:Z

    return p1
.end method


# virtual methods
.method public fillIntentForTab(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 103
    const-string v1, "useActivityWindow"

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 104
    new-instance v1, Lti/modules/titanium/ui/WindowProxy$1;

    invoke-direct {v1, p0}, Lti/modules/titanium/ui/WindowProxy$1;-><init>(Lti/modules/titanium/ui/WindowProxy;)V

    invoke-static {v1}, Lorg/appcelerator/titanium/TiActivityWindows;->addWindow(Lorg/appcelerator/titanium/TiActivityWindow;)I

    move-result v0

    .line 115
    .local v0, windowId:I
    const-string v1, "windowId"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 116
    return-void
.end method

.method protected getLangConversionTable()Lorg/appcelerator/kroll/KrollDict;
    .locals 3

    .prologue
    .line 53
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 54
    .local v0, table:Lorg/appcelerator/kroll/KrollDict;
    const-string v1, "title"

    const-string v2, "titleid"

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    const-string v1, "titlePrompt"

    const-string v2, "titlepromptid"

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    return-object v0
.end method

.method public getTab()Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lti/modules/titanium/ui/WindowProxy;->tab:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    return-object v0
.end method

.method public getTabGroup()Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lti/modules/titanium/ui/WindowProxy;->tabGroup:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    return-object v0
.end method

.method public getView(Landroid/app/Activity;)Lorg/appcelerator/titanium/view/TiUIView;
    .locals 2
    .parameter "activity"

    .prologue
    .line 63
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to getView on a Window"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected getWindow()Lti/modules/titanium/ui/TiUIWindow;
    .locals 0

    .prologue
    .line 68
    iget-object p0, p0, Lti/modules/titanium/ui/WindowProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    .end local p0
    check-cast p0, Lti/modules/titanium/ui/TiUIWindow;

    return-object p0
.end method

.method protected handleClose(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 3
    .parameter "options"

    .prologue
    .line 121
    sget-boolean v1, Lti/modules/titanium/ui/WindowProxy;->DBG:Z

    if-eqz v1, :cond_0

    .line 122
    const-string v1, "WindowProxy"

    const-string v2, "handleClose"

    invoke-static {v1, v2}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :cond_0
    invoke-virtual {p0}, Lti/modules/titanium/ui/WindowProxy;->getWindow()Lti/modules/titanium/ui/TiUIWindow;

    move-result-object v0

    .line 125
    .local v0, window:Lti/modules/titanium/ui/TiUIWindow;
    if-eqz v0, :cond_1

    .line 126
    invoke-virtual {v0, p1}, Lti/modules/titanium/ui/TiUIWindow;->close(Lorg/appcelerator/kroll/KrollDict;)V

    .line 128
    :cond_1
    invoke-virtual {p0}, Lti/modules/titanium/ui/WindowProxy;->releaseViews()V

    .line 129
    const/4 v1, 0x0

    iput-boolean v1, p0, Lti/modules/titanium/ui/WindowProxy;->opened:Z

    .line 130
    return-void
.end method

.method protected handleGetActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lti/modules/titanium/ui/WindowProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 154
    .end local p0
    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    iget-object p0, p0, Lti/modules/titanium/ui/WindowProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    .end local p0
    check-cast p0, Lti/modules/titanium/ui/TiUIWindow;

    invoke-virtual {p0}, Lti/modules/titanium/ui/TiUIWindow;->getActivity()Landroid/app/Activity;

    move-result-object v0

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v2, 0x1

    .line 74
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 85
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->handleMessage(Landroid/os/Message;)Z

    move-result v0

    :goto_0
    return v0

    .line 76
    :pswitch_0
    invoke-virtual {p0}, Lti/modules/titanium/ui/WindowProxy;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lti/modules/titanium/ui/WindowProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    invoke-virtual {p0, v0, v1}, Lti/modules/titanium/ui/WindowProxy;->realizeViews(Landroid/app/Activity;Lorg/appcelerator/titanium/view/TiUIView;)V

    .line 77
    iget-object v0, p0, Lti/modules/titanium/ui/WindowProxy;->tab:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    if-nez v0, :cond_0

    .line 80
    :cond_0
    iput-boolean v2, p0, Lti/modules/titanium/ui/WindowProxy;->opened:Z

    .line 81
    const-string v0, "open"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lti/modules/titanium/ui/WindowProxy;->fireEvent(Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)Z

    move v0, v2

    .line 82
    goto :goto_0

    .line 74
    :pswitch_data_0
    .packed-switch 0x834
        :pswitch_0
    .end packed-switch
.end method

.method protected handleOpen(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 3
    .parameter "options"

    .prologue
    .line 93
    sget-boolean v1, Lti/modules/titanium/ui/WindowProxy;->DBG:Z

    if-eqz v1, :cond_0

    .line 94
    const-string v1, "WindowProxy"

    const-string v2, "handleOpen"

    invoke-static {v1, v2}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :cond_0
    new-instance v0, Landroid/os/Messenger;

    invoke-virtual {p0}, Lti/modules/titanium/ui/WindowProxy;->getUIHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    .line 98
    .local v0, messenger:Landroid/os/Messenger;
    new-instance v1, Lti/modules/titanium/ui/TiUIWindow;

    const/16 v2, 0x834

    invoke-direct {v1, p0, p1, v0, v2}, Lti/modules/titanium/ui/TiUIWindow;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;Lorg/appcelerator/kroll/KrollDict;Landroid/os/Messenger;I)V

    iput-object v1, p0, Lti/modules/titanium/ui/WindowProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    .line 99
    return-void
.end method

.method public setLeftNavButton(Lti/modules/titanium/ui/ButtonProxy;)V
    .locals 2
    .parameter "button"

    .prologue
    .line 147
    const-string v0, "WindowProxy"

    const-string v1, "setLeftNavButton not supported in Android"

    invoke-static {v0, v1}, Lorg/appcelerator/titanium/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    return-void
.end method
