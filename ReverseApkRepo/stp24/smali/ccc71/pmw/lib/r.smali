.class final Lccc71/pmw/lib/r;
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
    iput-object p1, p0, Lccc71/pmw/lib/r;->a:Lccc71/pmw/lib/at_build;

    .line 293
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lccc71/pmw/lib/r;)Lccc71/pmw/lib/at_build;
    .locals 1
    .parameter

    .prologue
    .line 293
    iget-object v0, p0, Lccc71/pmw/lib/r;->a:Lccc71/pmw/lib/at_build;

    return-object v0
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 298
    iget-object v0, p0, Lccc71/pmw/lib/r;->a:Lccc71/pmw/lib/at_build;

    invoke-virtual {v0}, Lccc71/pmw/lib/at_build;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lccc71/pmw/lib/e;->b:I

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 299
    sget v0, Lccc71/pmw/lib/d;->d:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 300
    sget v1, Lccc71/pmw/lib/d;->e:I

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 302
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lccc71/pmw/lib/r;->a:Lccc71/pmw/lib/at_build;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v4, Lccc71/pmw/lib/g;->di:I

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 303
    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    new-instance v4, Lccc71/pmw/lib/s;

    invoke-direct {v4, p0, v0, v1}, Lccc71/pmw/lib/s;-><init>(Lccc71/pmw/lib/r;Landroid/widget/EditText;Landroid/widget/EditText;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 320
    const/high16 v1, 0x104

    invoke-virtual {v0, v1, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 321
    return-void
.end method
