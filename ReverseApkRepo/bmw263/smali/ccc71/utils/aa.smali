.class final Lccc71/utils/aa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lccc71/utils/ak;


# instance fields
.field final synthetic a:Lccc71/utils/y;


# direct methods
.method constructor <init>(Lccc71/utils/y;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/utils/aa;->a:Lccc71/utils/y;

    .line 459
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 482
    if-gez p1, :cond_0

    .line 486
    iget-object v0, p0, Lccc71/utils/aa;->a:Lccc71/utils/y;

    invoke-static {v0}, Lccc71/utils/y;->a(Lccc71/utils/y;)Lccc71/utils/ccc71_list_view;

    move-result-object v0

    invoke-static {v0}, Lccc71/utils/ccc71_list_view;->c(Lccc71/utils/ccc71_list_view;)Landroid/content/Context;

    move-result-object v0

    neg-int v1, p1

    invoke-static {v0, v1}, Lccc71/bmw/data/a/e;->a(Landroid/content/Context;I)V

    .line 488
    iget-object v0, p0, Lccc71/utils/aa;->a:Lccc71/utils/y;

    invoke-static {v0}, Lccc71/utils/y;->a(Lccc71/utils/y;)Lccc71/utils/ccc71_list_view;

    move-result-object v0

    invoke-virtual {v0}, Lccc71/utils/ccc71_list_view;->b()V

    .line 541
    :goto_0
    return-void

    .line 494
    :cond_0
    new-instance v0, Lccc71/bmw/data/a/e;

    iget-object v1, p0, Lccc71/utils/aa;->a:Lccc71/utils/y;

    invoke-static {v1}, Lccc71/utils/y;->a(Lccc71/utils/y;)Lccc71/utils/ccc71_list_view;

    move-result-object v1

    invoke-static {v1}, Lccc71/utils/ccc71_list_view;->c(Lccc71/utils/ccc71_list_view;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lccc71/bmw/data/a/e;-><init>(Landroid/content/Context;)V

    .line 495
    invoke-virtual {v0}, Lccc71/bmw/data/a/e;->a()V

    .line 496
    invoke-virtual {v0, p1}, Lccc71/bmw/data/a/e;->a(I)Lccc71/bmw/data/a/d;

    move-result-object v1

    .line 497
    invoke-virtual {v0}, Lccc71/bmw/data/a/e;->b()V

    .line 499
    new-instance v0, Landroid/widget/EditText;

    iget-object v2, p0, Lccc71/utils/aa;->a:Lccc71/utils/y;

    invoke-static {v2}, Lccc71/utils/y;->a(Lccc71/utils/y;)Lccc71/utils/ccc71_list_view;

    move-result-object v2

    invoke-static {v2}, Lccc71/utils/ccc71_list_view;->c(Lccc71/utils/ccc71_list_view;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 500
    iget-object v2, v1, Lccc71/bmw/data/a/d;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 501
    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 502
    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 504
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lccc71/utils/aa;->a:Lccc71/utils/y;

    invoke-static {v3}, Lccc71/utils/y;->a(Lccc71/utils/y;)Lccc71/utils/ccc71_list_view;

    move-result-object v3

    invoke-static {v3}, Lccc71/utils/ccc71_list_view;->c(Lccc71/utils/ccc71_list_view;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v3, Lccc71/bmw/lib/g;->bA:I

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 505
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1040013

    new-instance v4, Lccc71/utils/ab;

    invoke-direct {v4, p0, v1, v0}, Lccc71/utils/ab;-><init>(Lccc71/utils/aa;Lccc71/bmw/data/a/d;Landroid/widget/EditText;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 536
    const v2, 0x1040009

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 538
    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 539
    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0
.end method

.method public final a(IZ)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 465
    iget-object v0, p0, Lccc71/utils/aa;->a:Lccc71/utils/y;

    invoke-static {v0}, Lccc71/utils/y;->a(Lccc71/utils/y;)Lccc71/utils/ccc71_list_view;

    move-result-object v1

    if-eqz p2, :cond_1

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, v1, Lccc71/utils/ccc71_list_view;->a:Z

    .line 466
    iget-object v0, p0, Lccc71/utils/aa;->a:Lccc71/utils/y;

    invoke-static {v0}, Lccc71/utils/y;->a(Lccc71/utils/y;)Lccc71/utils/ccc71_list_view;

    move-result-object v0

    invoke-virtual {v0}, Lccc71/utils/ccc71_list_view;->b()V

    .line 468
    iget-object v0, p0, Lccc71/utils/aa;->a:Lccc71/utils/y;

    invoke-static {v0}, Lccc71/utils/y;->a(Lccc71/utils/y;)Lccc71/utils/ccc71_list_view;

    move-result-object v0

    invoke-static {v0}, Lccc71/utils/ccc71_list_view;->d(Lccc71/utils/ccc71_list_view;)Lccc71/utils/ak;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 470
    iget-object v0, p0, Lccc71/utils/aa;->a:Lccc71/utils/y;

    invoke-static {v0}, Lccc71/utils/y;->a(Lccc71/utils/y;)Lccc71/utils/ccc71_list_view;

    move-result-object v0

    invoke-static {v0}, Lccc71/utils/ccc71_list_view;->d(Lccc71/utils/ccc71_list_view;)Lccc71/utils/ak;

    move-result-object v0

    iget-object v1, p0, Lccc71/utils/aa;->a:Lccc71/utils/y;

    invoke-static {v1}, Lccc71/utils/y;->a(Lccc71/utils/y;)Lccc71/utils/ccc71_list_view;

    move-result-object v1

    iget-boolean v1, v1, Lccc71/utils/ccc71_list_view;->a:Z

    invoke-interface {v0, p1, v1}, Lccc71/utils/ak;->a(IZ)V

    .line 472
    :cond_0
    return-void

    .line 465
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final a(Landroid/view/View;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 477
    return-void
.end method
