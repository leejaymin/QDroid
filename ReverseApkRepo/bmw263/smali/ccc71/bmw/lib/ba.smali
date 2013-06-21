.class final Lccc71/bmw/lib/ba;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# instance fields
.field final synthetic a:Lccc71/bmw/lib/bmw_history;


# direct methods
.method constructor <init>(Lccc71/bmw/lib/bmw_history;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/bmw/lib/ba;->a:Lccc71/bmw/lib/bmw_history;

    .line 283
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected final varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter

    .prologue
    .line 1
    const-string v0, "battery_widget_monitor"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Deleting mark id # "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lccc71/bmw/lib/ba;->a:Lccc71/bmw/lib/bmw_history;

    invoke-static {v2}, Lccc71/bmw/lib/bmw_history;->c(Lccc71/bmw/lib/bmw_history;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lccc71/bmw/lib/ba;->a:Lccc71/bmw/lib/bmw_history;

    iget-object v1, p0, Lccc71/bmw/lib/ba;->a:Lccc71/bmw/lib/bmw_history;

    invoke-static {v1}, Lccc71/bmw/lib/bmw_history;->c(Lccc71/bmw/lib/bmw_history;)I

    move-result v1

    invoke-static {v0, v1}, Lccc71/bmw/data/a/e;->a(Landroid/content/Context;I)V

    iget-object v0, p0, Lccc71/bmw/lib/ba;->a:Lccc71/bmw/lib/bmw_history;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lccc71/bmw/lib/bmw_history;->a(Lccc71/bmw/lib/bmw_history;I)V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 2
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lccc71/bmw/lib/ba;->a:Lccc71/bmw/lib/bmw_history;

    invoke-virtual {v0}, Lccc71/bmw/lib/bmw_history;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lccc71/bmw/lib/ba;->a:Lccc71/bmw/lib/bmw_history;

    sget v1, Lccc71/bmw/lib/d;->bQ:I

    invoke-virtual {v0, v1}, Lccc71/bmw/lib/bmw_history;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lccc71/utils/ccc71_list_view;

    invoke-virtual {v0}, Lccc71/utils/ccc71_list_view;->b()V

    :cond_0
    return-void
.end method
