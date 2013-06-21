.class public Lorg/hk/service/RemoteViewService;
.super Ljava/lang/Object;
.source "RemoteViewService.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lorg/hk/service/RemoteViewService;->mContext:Landroid/content/Context;

    .line 21
    return-void
.end method

.method private createPendingIntent(I)Landroid/app/PendingIntent;
    .locals 6
    .parameter "appWidgetId"

    .prologue
    .line 46
    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lorg/hk/service/RemoteViewService;->mContext:Landroid/content/Context;

    const-class v4, Lorg/hk/sticky/StickyActivity;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 47
    .local v0, i:Landroid/content/Intent;
    sget-object v3, Lorg/hk/common/Common;->_CONTENT_URI:Landroid/net/Uri;

    int-to-long v4, p1

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 48
    .local v2, uri:Landroid/net/Uri;
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 49
    iget-object v3, p0, Lorg/hk/service/RemoteViewService;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    .line 50
    const/high16 v5, 0x800

    .line 49
    invoke-static {v3, v4, v0, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 51
    .local v1, pi:Landroid/app/PendingIntent;
    return-object v1
.end method


# virtual methods
.method public setRemoteView(Lorg/hk/bean/StickyBean;I)V
    .locals 7
    .parameter "sBean"
    .parameter "appWidgetId"

    .prologue
    const v6, 0x7f070001

    .line 24
    new-instance v2, Landroid/widget/RemoteViews;

    iget-object v3, p0, Lorg/hk/service/RemoteViewService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 25
    iget v4, p1, Lorg/hk/bean/StickyBean;->backGroundColor:I

    iget v5, p1, Lorg/hk/bean/StickyBean;->size:I

    invoke-static {v4, v5}, Lorg/hk/common/Common;->getLayout(II)I

    move-result v4

    .line 24
    invoke-direct {v2, v3, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 27
    .local v2, updateViews:Landroid/widget/RemoteViews;
    iget-object v3, p1, Lorg/hk/bean/StickyBean;->content:Ljava/lang/String;

    invoke-virtual {v2, v6, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 29
    iget v3, p1, Lorg/hk/bean/StickyBean;->textColor:I

    invoke-static {v3}, Lorg/hk/common/Common;->getTextColor(I)I

    move-result v3

    .line 28
    invoke-virtual {v2, v6, v3}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 31
    invoke-direct {p0, p2}, Lorg/hk/service/RemoteViewService;->createPendingIntent(I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 33
    .local v1, pi:Landroid/app/PendingIntent;
    const/high16 v3, 0x7f07

    invoke-virtual {v2, v3, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 34
    invoke-virtual {v2, v6, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 36
    iget-object v3, p0, Lorg/hk/service/RemoteViewService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 37
    .local v0, manager:Landroid/appwidget/AppWidgetManager;
    invoke-virtual {v0, p2, v2}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 38
    return-void
.end method
