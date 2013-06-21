.class final Lccc71/pmw/lib/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lccc71/pmw/lib/at_build;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/at_build;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/x;->a:Lccc71/pmw/lib/at_build;

    .line 508
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lccc71/pmw/lib/x;)Lccc71/pmw/lib/at_build;
    .locals 1
    .parameter

    .prologue
    .line 508
    iget-object v0, p0, Lccc71/pmw/lib/x;->a:Lccc71/pmw/lib/at_build;

    return-object v0
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 513
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccc71/pmw/b/b;

    .line 515
    iget-object v1, p0, Lccc71/pmw/lib/x;->a:Lccc71/pmw/lib/at_build;

    invoke-virtual {v1}, Lccc71/pmw/lib/at_build;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lccc71/pmw/lib/e;->b:I

    invoke-virtual {v1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 516
    sget v1, Lccc71/pmw/lib/d;->d:I

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 517
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 518
    sget v2, Lccc71/pmw/lib/d;->e:I

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 519
    iget-object v4, v0, Lccc71/pmw/b/b;->d:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 520
    iget-object v1, v0, Lccc71/pmw/b/b;->e:Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 522
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lccc71/pmw/lib/x;->a:Lccc71/pmw/lib/at_build;

    invoke-direct {v1, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v4, Lccc71/pmw/lib/g;->di:I

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 523
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v3, 0x104000a

    new-instance v4, Lccc71/pmw/lib/y;

    invoke-direct {v4, p0, v0, v2}, Lccc71/pmw/lib/y;-><init>(Lccc71/pmw/lib/x;Lccc71/pmw/b/b;Landroid/widget/EditText;)V

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 534
    const/high16 v1, 0x104

    invoke-virtual {v0, v1, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 535
    return-void
.end method
