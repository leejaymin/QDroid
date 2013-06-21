.class final Lccc71/bmw/lib/dr;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# instance fields
.field final synthetic a:Lccc71/bmw/lib/dq;


# direct methods
.method constructor <init>(Lccc71/bmw/lib/dq;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/bmw/lib/dr;->a:Lccc71/bmw/lib/dq;

    .line 776
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected final varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1
    iget-object v0, p0, Lccc71/bmw/lib/dr;->a:Lccc71/bmw/lib/dq;

    invoke-static {v0}, Lccc71/bmw/lib/dq;->a(Lccc71/bmw/lib/dq;)Lccc71/bmw/lib/bmw_status;

    move-result-object v0

    invoke-static {v0, v1}, Lccc71/bmw/lib/bmw_watcher;->a(Landroid/content/Context;Lccc71/bmw/data/a;)Lccc71/bmw/data/a;

    return-object v1
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lccc71/bmw/lib/dr;->a:Lccc71/bmw/lib/dq;

    invoke-static {v0}, Lccc71/bmw/lib/dq;->a(Lccc71/bmw/lib/dq;)Lccc71/bmw/lib/bmw_status;

    move-result-object v0

    invoke-static {v0}, Lccc71/bmw/lib/bmw_status;->b(Lccc71/bmw/lib/bmw_status;)V

    iget-object v0, p0, Lccc71/bmw/lib/dr;->a:Lccc71/bmw/lib/dq;

    invoke-static {v0}, Lccc71/bmw/lib/dq;->a(Lccc71/bmw/lib/dq;)Lccc71/bmw/lib/bmw_status;

    move-result-object v0

    iget-object v1, p0, Lccc71/bmw/lib/dr;->a:Lccc71/bmw/lib/dq;

    invoke-static {v1}, Lccc71/bmw/lib/dq;->a(Lccc71/bmw/lib/dq;)Lccc71/bmw/lib/bmw_status;

    move-result-object v1

    sget v2, Lccc71/bmw/lib/g;->bW:I

    invoke-virtual {v1, v2}, Lccc71/bmw/lib/bmw_status;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
