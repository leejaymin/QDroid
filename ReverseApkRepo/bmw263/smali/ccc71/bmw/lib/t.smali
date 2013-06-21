.class final Lccc71/bmw/lib/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lccc71/bmw/lib/bmw_calibration;


# direct methods
.method constructor <init>(Lccc71/bmw/lib/bmw_calibration;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/bmw/lib/t;->a:Lccc71/bmw/lib/bmw_calibration;

    .line 721
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lccc71/bmw/lib/t;)Lccc71/bmw/lib/bmw_calibration;
    .locals 1
    .parameter

    .prologue
    .line 721
    iget-object v0, p0, Lccc71/bmw/lib/t;->a:Lccc71/bmw/lib/bmw_calibration;

    return-object v0
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 726
    iget-object v0, p0, Lccc71/bmw/lib/t;->a:Lccc71/bmw/lib/bmw_calibration;

    invoke-virtual {v0}, Lccc71/bmw/lib/bmw_calibration;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lccc71/bmw/lib/e;->aZ:I

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 727
    sget v0, Lccc71/bmw/lib/d;->bo:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 728
    sget v1, Lccc71/bmw/lib/d;->aZ:I

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 729
    sget v3, Lccc71/bmw/lib/bmw_watcher;->m:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 731
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lccc71/bmw/lib/t;->a:Lccc71/bmw/lib/bmw_calibration;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v4, Lccc71/bmw/lib/g;->bB:I

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 732
    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    new-instance v4, Lccc71/bmw/lib/u;

    invoke-direct {v4, p0, v0, v1}, Lccc71/bmw/lib/u;-><init>(Lccc71/bmw/lib/t;Landroid/widget/EditText;Landroid/widget/EditText;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 774
    const/high16 v2, 0x104

    invoke-virtual {v1, v2, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 777
    new-instance v1, Lccc71/bmw/lib/v;

    invoke-direct {v1, p0, v0}, Lccc71/bmw/lib/v;-><init>(Lccc71/bmw/lib/t;Landroid/widget/EditText;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    .line 784
    return-void
.end method
