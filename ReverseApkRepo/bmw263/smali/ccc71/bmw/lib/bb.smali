.class final Lccc71/bmw/lib/bb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lccc71/bmw/lib/bmw_history;


# direct methods
.method constructor <init>(Lccc71/bmw/lib/bmw_history;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/bmw/lib/bb;->a:Lccc71/bmw/lib/bmw_history;

    .line 352
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 357
    iget-object v0, p0, Lccc71/bmw/lib/bb;->a:Lccc71/bmw/lib/bmw_history;

    invoke-static {v0}, Lccc71/bmw/lib/bi;->a(Landroid/app/Activity;)V

    .line 358
    iget-object v0, p0, Lccc71/bmw/lib/bb;->a:Lccc71/bmw/lib/bmw_history;

    sget v1, Lccc71/bmw/lib/d;->bQ:I

    invoke-virtual {v0, v1}, Lccc71/bmw/lib/bmw_history;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lccc71/utils/ccc71_list_view;

    .line 359
    iget-object v1, p0, Lccc71/bmw/lib/bb;->a:Lccc71/bmw/lib/bmw_history;

    sget v2, Lccc71/bmw/lib/g;->cu:I

    invoke-virtual {v1, v2}, Lccc71/bmw/lib/bmw_history;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccc71/utils/ccc71_list_view;->setText(Ljava/lang/String;)V

    .line 360
    iget-object v0, p0, Lccc71/bmw/lib/bb;->a:Lccc71/bmw/lib/bmw_history;

    invoke-virtual {v0}, Lccc71/bmw/lib/bmw_history;->finish()V

    .line 362
    iget-object v0, p0, Lccc71/bmw/lib/bb;->a:Lccc71/bmw/lib/bmw_history;

    iget-object v1, p0, Lccc71/bmw/lib/bb;->a:Lccc71/bmw/lib/bmw_history;

    sget v2, Lccc71/bmw/lib/g;->ca:I

    invoke-virtual {v1, v2}, Lccc71/bmw/lib/bmw_history;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 363
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 364
    return-void
.end method
