.class Lcom/falmarri/futures/ConfigureFuturesWidget$3;
.super Ljava/lang/Object;
.source "ConfigureFuturesWidget.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/falmarri/futures/ConfigureFuturesWidget;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/falmarri/futures/ConfigureFuturesWidget;


# direct methods
.method constructor <init>(Lcom/falmarri/futures/ConfigureFuturesWidget;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/falmarri/futures/ConfigureFuturesWidget$3;->this$0:Lcom/falmarri/futures/ConfigureFuturesWidget;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 67
    iget-object v4, p0, Lcom/falmarri/futures/ConfigureFuturesWidget$3;->this$0:Lcom/falmarri/futures/ConfigureFuturesWidget;

    invoke-static {v4}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 68
    .local v0, appWidgetManager:Landroid/appwidget/AppWidgetManager;
    new-instance v2, Landroid/widget/RemoteViews;

    iget-object v4, p0, Lcom/falmarri/futures/ConfigureFuturesWidget$3;->this$0:Lcom/falmarri/futures/ConfigureFuturesWidget;

    invoke-virtual {v4}, Lcom/falmarri/futures/ConfigureFuturesWidget;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f080006

    invoke-direct {v2, v4, v5}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 70
    .local v2, layout:Landroid/widget/RemoteViews;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v4, p0, Lcom/falmarri/futures/ConfigureFuturesWidget$3;->this$0:Lcom/falmarri/futures/ConfigureFuturesWidget;

    iget-object v4, v4, Lcom/falmarri/futures/ConfigureFuturesWidget;->check:[Z

    array-length v4, v4

    if-lt v1, v4, :cond_0

    .line 84
    iget-object v4, p0, Lcom/falmarri/futures/ConfigureFuturesWidget$3;->this$0:Lcom/falmarri/futures/ConfigureFuturesWidget;

    #getter for: Lcom/falmarri/futures/ConfigureFuturesWidget;->mAppWidgetId:I
    invoke-static {v4}, Lcom/falmarri/futures/ConfigureFuturesWidget;->access$0(Lcom/falmarri/futures/ConfigureFuturesWidget;)I

    move-result v4

    invoke-virtual {v0, v4, v2}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 86
    return-void

    .line 72
    :cond_0
    iget-object v4, p0, Lcom/falmarri/futures/ConfigureFuturesWidget$3;->this$0:Lcom/falmarri/futures/ConfigureFuturesWidget;

    iget-object v4, v4, Lcom/falmarri/futures/ConfigureFuturesWidget;->check:[Z

    aget-boolean v4, v4, v1

    if-eqz v4, :cond_1

    .line 74
    new-instance v3, Landroid/widget/RemoteViews;

    iget-object v4, p0, Lcom/falmarri/futures/ConfigureFuturesWidget$3;->this$0:Lcom/falmarri/futures/ConfigureFuturesWidget;

    invoke-virtual {v4}, Lcom/falmarri/futures/ConfigureFuturesWidget;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f030002

    invoke-direct {v3, v4, v5}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 75
    .local v3, row:Landroid/widget/RemoteViews;
    const v4, 0x7f080002

    const-string v5, "Tick"

    invoke-virtual {v3, v4, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 76
    const v4, 0x7f080004

    const-string v5, "-32.02"

    invoke-virtual {v3, v4, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 77
    const v4, 0x7f080003

    const-string v5, "3928.39"

    invoke-virtual {v3, v4, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 78
    invoke-virtual {v2}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v4

    invoke-virtual {v2, v4, v3}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    .line 70
    .end local v3           #row:Landroid/widget/RemoteViews;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
