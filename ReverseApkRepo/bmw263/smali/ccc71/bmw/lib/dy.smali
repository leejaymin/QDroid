.class final Lccc71/bmw/lib/dy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lccc71/bmw/lib/bmw_status;


# direct methods
.method constructor <init>(Lccc71/bmw/lib/bmw_status;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/bmw/lib/dy;->a:Lccc71/bmw/lib/bmw_status;

    .line 1215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 1219
    invoke-static {}, Lccc71/bmw/lib/bmw_watcher;->g()V

    .line 1220
    new-instance v0, Lccc71/bmw/lib/bi;

    iget-object v1, p0, Lccc71/bmw/lib/dy;->a:Lccc71/bmw/lib/bmw_status;

    invoke-direct {v0, v1}, Lccc71/bmw/lib/bi;-><init>(Landroid/content/Context;)V

    .line 1221
    sget v1, Lccc71/bmw/lib/bmw_watcher;->f:I

    invoke-virtual {v0, v1}, Lccc71/bmw/lib/bi;->a(I)V

    .line 1223
    iget-object v0, p0, Lccc71/bmw/lib/dy;->a:Lccc71/bmw/lib/bmw_status;

    invoke-static {v0}, Lccc71/bmw/lib/bmw_status;->a(Lccc71/bmw/lib/bmw_status;)V

    .line 1224
    iget-object v0, p0, Lccc71/bmw/lib/dy;->a:Lccc71/bmw/lib/bmw_status;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lccc71/bmw/lib/bmw_widget;->a(Landroid/content/Context;Z)V

    .line 1225
    iget-object v0, p0, Lccc71/bmw/lib/dy;->a:Lccc71/bmw/lib/bmw_status;

    invoke-static {v0}, Lccc71/bmw/lib/bmw_watcher;->h(Landroid/content/Context;)V

    .line 1227
    iget-object v0, p0, Lccc71/bmw/lib/dy;->a:Lccc71/bmw/lib/bmw_status;

    iget-object v1, p0, Lccc71/bmw/lib/dy;->a:Lccc71/bmw/lib/bmw_status;

    sget v2, Lccc71/bmw/lib/g;->cL:I

    invoke-virtual {v1, v2}, Lccc71/bmw/lib/bmw_status;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 1228
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1229
    return-void
.end method
