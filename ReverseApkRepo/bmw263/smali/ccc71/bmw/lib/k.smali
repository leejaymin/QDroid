.class final Lccc71/bmw/lib/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lccc71/bmw/lib/bmw_battery_compare;


# direct methods
.method constructor <init>(Lccc71/bmw/lib/bmw_battery_compare;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/bmw/lib/k;->a:Lccc71/bmw/lib/bmw_battery_compare;

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lccc71/bmw/lib/k;)Lccc71/bmw/lib/bmw_battery_compare;
    .locals 1
    .parameter

    .prologue
    .line 183
    iget-object v0, p0, Lccc71/bmw/lib/k;->a:Lccc71/bmw/lib/bmw_battery_compare;

    return-object v0
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 188
    new-instance v0, Lccc71/bmw/data/a/b;

    iget-object v1, p0, Lccc71/bmw/lib/k;->a:Lccc71/bmw/lib/bmw_battery_compare;

    invoke-direct {v0, v1}, Lccc71/bmw/data/a/b;-><init>(Landroid/content/Context;)V

    .line 189
    invoke-virtual {v0}, Lccc71/bmw/data/a/b;->a()V

    .line 190
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lccc71/bmw/data/a/b;->d(I)Lccc71/bmw/data/a/a;

    move-result-object v2

    .line 191
    invoke-virtual {v0}, Lccc71/bmw/data/a/b;->b()V

    .line 193
    iget-object v0, p0, Lccc71/bmw/lib/k;->a:Lccc71/bmw/lib/bmw_battery_compare;

    invoke-virtual {v0}, Lccc71/bmw/lib/bmw_battery_compare;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lccc71/bmw/lib/e;->aZ:I

    invoke-virtual {v0, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 194
    sget v0, Lccc71/bmw/lib/d;->bo:I

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 195
    sget v1, Lccc71/bmw/lib/d;->aZ:I

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 196
    iget-object v4, v2, Lccc71/bmw/data/a/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 197
    iget v4, v2, Lccc71/bmw/data/a/a;->c:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 199
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lccc71/bmw/lib/k;->a:Lccc71/bmw/lib/bmw_battery_compare;

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v5, Lccc71/bmw/lib/g;->bB:I

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 200
    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x1040013

    new-instance v5, Lccc71/bmw/lib/l;

    invoke-direct {v5, p0, v2, v0, v1}, Lccc71/bmw/lib/l;-><init>(Lccc71/bmw/lib/k;Lccc71/bmw/data/a/a;Landroid/widget/EditText;Landroid/widget/EditText;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 221
    const v2, 0x1040009

    invoke-virtual {v1, v2, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 223
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 224
    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 225
    return-void
.end method
