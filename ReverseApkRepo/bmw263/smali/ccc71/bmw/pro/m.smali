.class final Lccc71/bmw/pro/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lccc71/bmw/pro/l;

.field private final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(Lccc71/bmw/pro/l;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/bmw/pro/m;->a:Lccc71/bmw/pro/l;

    iput-object p2, p0, Lccc71/bmw/pro/m;->b:Landroid/content/Context;

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 189
    iget-object v0, p0, Lccc71/bmw/pro/m;->a:Lccc71/bmw/pro/l;

    invoke-static {v0}, Lccc71/bmw/pro/l;->a(Lccc71/bmw/pro/l;)Lccc71/bmw/pro/bmw_widget_graph;

    move-result-object v0

    iget v0, v0, Lccc71/bmw/pro/bmw_widget_graph;->E:I

    if-nez v0, :cond_0

    .line 191
    iget-object v0, p0, Lccc71/bmw/pro/m;->b:Landroid/content/Context;

    invoke-static {v0, v3}, Lccc71/bmw/lib/bmw_widget;->a(Landroid/content/Context;Z)V

    .line 197
    :goto_0
    return-void

    .line 195
    :cond_0
    iget-object v0, p0, Lccc71/bmw/pro/m;->b:Landroid/content/Context;

    sget-object v1, Lccc71/bmw/pro/bmw_widget_graph;->k:Landroid/appwidget/AppWidgetManager;

    iget-object v2, p0, Lccc71/bmw/pro/m;->a:Lccc71/bmw/pro/l;

    invoke-static {v2}, Lccc71/bmw/pro/l;->a(Lccc71/bmw/pro/l;)Lccc71/bmw/pro/bmw_widget_graph;

    move-result-object v2

    iget v2, v2, Lccc71/bmw/pro/bmw_widget_graph;->E:I

    invoke-static {v0, v1, v2, v3}, Lccc71/bmw/lib/bmw_widget;->a(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;IZ)V

    goto :goto_0
.end method
