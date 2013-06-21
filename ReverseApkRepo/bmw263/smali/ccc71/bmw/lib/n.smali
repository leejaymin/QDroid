.class final Lccc71/bmw/lib/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lccc71/bmw/lib/m;

.field private final synthetic b:Landroid/view/View;


# direct methods
.method constructor <init>(Lccc71/bmw/lib/m;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/bmw/lib/n;->a:Lccc71/bmw/lib/m;

    iput-object p2, p0, Lccc71/bmw/lib/n;->b:Landroid/view/View;

    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 239
    new-instance v0, Lccc71/bmw/data/a/b;

    iget-object v1, p0, Lccc71/bmw/lib/n;->a:Lccc71/bmw/lib/m;

    invoke-static {v1}, Lccc71/bmw/lib/m;->a(Lccc71/bmw/lib/m;)Lccc71/bmw/lib/bmw_battery_compare;

    move-result-object v1

    invoke-direct {v0, v1}, Lccc71/bmw/data/a/b;-><init>(Landroid/content/Context;)V

    .line 240
    invoke-virtual {v0}, Lccc71/bmw/data/a/b;->a()V

    .line 241
    iget-object v1, p0, Lccc71/bmw/lib/n;->b:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lccc71/bmw/data/a/b;->b(I)V

    .line 242
    invoke-virtual {v0}, Lccc71/bmw/data/a/b;->b()V

    .line 244
    iget-object v0, p0, Lccc71/bmw/lib/n;->a:Lccc71/bmw/lib/m;

    invoke-static {v0}, Lccc71/bmw/lib/m;->a(Lccc71/bmw/lib/m;)Lccc71/bmw/lib/bmw_battery_compare;

    move-result-object v0

    invoke-static {v0}, Lccc71/bmw/lib/bmw_battery_compare;->a(Lccc71/bmw/lib/bmw_battery_compare;)V

    .line 245
    return-void
.end method
