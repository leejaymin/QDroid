.class public Lorg/hk/sticky/StickyAppWidget;
.super Landroid/appwidget/AppWidgetProvider;
.source "StickyAppWidget.java"


# instance fields
.field private mRemoteViewService:Lorg/hk/service/RemoteViewService;

.field private mSticky:Lorg/hk/provider/Sticky;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeleted(Landroid/content/Context;[I)V
    .locals 2
    .parameter "context"
    .parameter "appWidgetIds"

    .prologue
    .line 55
    const-string v0, "onDeleted"

    invoke-static {v0}, Lorg/hk/common/Common;->LOG(Ljava/lang/String;)V

    .line 56
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onDeleted(Landroid/content/Context;[I)V

    .line 57
    new-instance v0, Lorg/hk/provider/Sticky;

    invoke-direct {v0, p1}, Lorg/hk/provider/Sticky;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lorg/hk/provider/Sticky;->open()Lorg/hk/provider/Sticky;

    move-result-object v0

    iput-object v0, p0, Lorg/hk/sticky/StickyAppWidget;->mSticky:Lorg/hk/provider/Sticky;

    .line 58
    iget-object v0, p0, Lorg/hk/sticky/StickyAppWidget;->mSticky:Lorg/hk/provider/Sticky;

    const/4 v1, 0x0

    aget v1, p2, v1

    invoke-virtual {v0, v1}, Lorg/hk/provider/Sticky;->delete(I)Z

    .line 59
    iget-object v0, p0, Lorg/hk/sticky/StickyAppWidget;->mSticky:Lorg/hk/provider/Sticky;

    invoke-virtual {v0}, Lorg/hk/provider/Sticky;->close()V

    .line 60
    return-void
.end method

.method public onDisabled(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 64
    const-string v0, "onDisabled"

    invoke-static {v0}, Lorg/hk/common/Common;->LOG(Ljava/lang/String;)V

    .line 65
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetProvider;->onDisabled(Landroid/content/Context;)V

    .line 66
    new-instance v0, Lorg/hk/provider/Sticky;

    invoke-direct {v0, p1}, Lorg/hk/provider/Sticky;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lorg/hk/provider/Sticky;->open()Lorg/hk/provider/Sticky;

    move-result-object v0

    iput-object v0, p0, Lorg/hk/sticky/StickyAppWidget;->mSticky:Lorg/hk/provider/Sticky;

    .line 67
    iget-object v0, p0, Lorg/hk/sticky/StickyAppWidget;->mSticky:Lorg/hk/provider/Sticky;

    invoke-virtual {v0}, Lorg/hk/provider/Sticky;->deleteAll()Z

    .line 68
    iget-object v0, p0, Lorg/hk/sticky/StickyAppWidget;->mSticky:Lorg/hk/provider/Sticky;

    invoke-virtual {v0}, Lorg/hk/provider/Sticky;->close()V

    .line 69
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x0

    .line 29
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 30
    const-string v3, "onReceive"

    invoke-static {v3}, Lorg/hk/common/Common;->LOG(Ljava/lang/String;)V

    .line 31
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 32
    const-string v4, "android.appwidget.action.APPWIDGET_DELETED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 33
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 34
    const-string v4, "appWidgetId"

    .line 33
    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 36
    .local v0, appWidgetId:I
    if-eqz v0, :cond_0

    .line 37
    const/4 v3, 0x1

    new-array v3, v3, [I

    aput v0, v3, v5

    invoke-virtual {p0, p1, v3}, Lorg/hk/sticky/StickyAppWidget;->onDeleted(Landroid/content/Context;[I)V

    .line 51
    .end local v0           #appWidgetId:I
    :cond_0
    return-void

    .line 39
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 40
    const-string v3, "onReceive BootCompleted"

    invoke-static {v3}, Lorg/hk/common/Common;->LOG(Ljava/lang/String;)V

    .line 41
    new-instance v3, Lorg/hk/provider/Sticky;

    invoke-direct {v3, p1}, Lorg/hk/provider/Sticky;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Lorg/hk/provider/Sticky;->open()Lorg/hk/provider/Sticky;

    move-result-object v3

    iput-object v3, p0, Lorg/hk/sticky/StickyAppWidget;->mSticky:Lorg/hk/provider/Sticky;

    .line 42
    iget-object v3, p0, Lorg/hk/sticky/StickyAppWidget;->mSticky:Lorg/hk/provider/Sticky;

    invoke-virtual {v3}, Lorg/hk/provider/Sticky;->findAll()Ljava/util/List;

    move-result-object v2

    .line 43
    .local v2, sList:Ljava/util/List;,"Ljava/util/List<Lorg/hk/bean/StickyBean;>;"
    if-eqz v2, :cond_0

    .line 46
    new-instance v3, Lorg/hk/service/RemoteViewService;

    invoke-direct {v3, p1}, Lorg/hk/service/RemoteViewService;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lorg/hk/sticky/StickyAppWidget;->mRemoteViewService:Lorg/hk/service/RemoteViewService;

    .line 47
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/hk/bean/StickyBean;

    .line 48
    .local v1, s:Lorg/hk/bean/StickyBean;
    iget-object v4, p0, Lorg/hk/sticky/StickyAppWidget;->mRemoteViewService:Lorg/hk/service/RemoteViewService;

    iget v5, v1, Lorg/hk/bean/StickyBean;->widgetId:I

    invoke-virtual {v4, v1, v5}, Lorg/hk/service/RemoteViewService;->setRemoteView(Lorg/hk/bean/StickyBean;I)V

    goto :goto_0
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 1
    .parameter "context"
    .parameter "appWidgetManager"
    .parameter "appWidgetIds"

    .prologue
    .line 23
    const-string v0, "onUpdate"

    invoke-static {v0}, Lorg/hk/common/Common;->LOG(Ljava/lang/String;)V

    .line 24
    invoke-super {p0, p1, p2, p3}, Landroid/appwidget/AppWidgetProvider;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    .line 25
    return-void
.end method
