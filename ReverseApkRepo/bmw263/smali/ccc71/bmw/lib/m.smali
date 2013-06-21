.class final Lccc71/bmw/lib/m;
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
    iput-object p1, p0, Lccc71/bmw/lib/m;->a:Lccc71/bmw/lib/bmw_battery_compare;

    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lccc71/bmw/lib/m;)Lccc71/bmw/lib/bmw_battery_compare;
    .locals 1
    .parameter

    .prologue
    .line 228
    iget-object v0, p0, Lccc71/bmw/lib/m;->a:Lccc71/bmw/lib/bmw_battery_compare;

    return-object v0
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 233
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lccc71/bmw/lib/m;->a:Lccc71/bmw/lib/bmw_battery_compare;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lccc71/bmw/lib/g;->bD:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 234
    const v1, 0x1040013

    new-instance v2, Lccc71/bmw/lib/n;

    invoke-direct {v2, p0, p1}, Lccc71/bmw/lib/n;-><init>(Lccc71/bmw/lib/m;Landroid/view/View;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 246
    const v1, 0x1040009

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 247
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 248
    return-void
.end method
