.class final Lccc71/bmw/lib/az;
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
    iput-object p1, p0, Lccc71/bmw/lib/az;->a:Lccc71/bmw/lib/bmw_history;

    .line 253
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected final varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 1
    iget-object v0, p0, Lccc71/bmw/lib/az;->a:Lccc71/bmw/lib/bmw_history;

    const v1, -0x55000001

    const/4 v2, 0x1

    new-instance v3, Ljava/util/Date;

    iget-object v4, p0, Lccc71/bmw/lib/az;->a:Lccc71/bmw/lib/bmw_history;

    invoke-static {v4}, Lccc71/bmw/lib/bmw_history;->b(Lccc71/bmw/lib/bmw_history;)J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-static {v0, v6, v1, v2, v3}, Lccc71/bmw/data/a/e;->a(Landroid/content/Context;Ljava/lang/String;IZLjava/util/Date;)V

    iget-object v0, p0, Lccc71/bmw/lib/az;->a:Lccc71/bmw/lib/bmw_history;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lccc71/bmw/lib/bmw_history;->a(Lccc71/bmw/lib/bmw_history;J)V

    return-object v6
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lccc71/bmw/lib/az;->a:Lccc71/bmw/lib/bmw_history;

    invoke-virtual {v0}, Lccc71/bmw/lib/bmw_history;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lccc71/bmw/lib/az;->a:Lccc71/bmw/lib/bmw_history;

    iget-object v1, p0, Lccc71/bmw/lib/az;->a:Lccc71/bmw/lib/bmw_history;

    sget v2, Lccc71/bmw/lib/g;->cf:I

    invoke-virtual {v1, v2}, Lccc71/bmw/lib/bmw_history;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lccc71/bmw/lib/az;->a:Lccc71/bmw/lib/bmw_history;

    sget v1, Lccc71/bmw/lib/d;->bQ:I

    invoke-virtual {v0, v1}, Lccc71/bmw/lib/bmw_history;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lccc71/utils/ccc71_list_view;

    invoke-virtual {v0}, Lccc71/utils/ccc71_list_view;->b()V

    :cond_0
    return-void
.end method
