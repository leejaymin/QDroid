.class final Lccc71/utils/ab;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lccc71/utils/aa;

.field private final synthetic b:Lccc71/bmw/data/a/d;

.field private final synthetic c:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lccc71/utils/aa;Lccc71/bmw/data/a/d;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/utils/ab;->a:Lccc71/utils/aa;

    iput-object p2, p0, Lccc71/utils/ab;->b:Lccc71/bmw/data/a/d;

    iput-object p3, p0, Lccc71/utils/ab;->c:Landroid/widget/EditText;

    .line 505
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lccc71/utils/ab;)Lccc71/utils/aa;
    .locals 1
    .parameter

    .prologue
    .line 505
    iget-object v0, p0, Lccc71/utils/ab;->a:Lccc71/utils/aa;

    return-object v0
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 510
    new-instance v0, Lccc71/bmw/data/a/e;

    iget-object v1, p0, Lccc71/utils/ab;->a:Lccc71/utils/aa;

    iget-object v1, v1, Lccc71/utils/aa;->a:Lccc71/utils/y;

    invoke-static {v1}, Lccc71/utils/y;->a(Lccc71/utils/y;)Lccc71/utils/ccc71_list_view;

    move-result-object v1

    invoke-static {v1}, Lccc71/utils/ccc71_list_view;->c(Lccc71/utils/ccc71_list_view;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lccc71/bmw/data/a/e;-><init>(Landroid/content/Context;)V

    .line 511
    invoke-virtual {v0}, Lccc71/bmw/data/a/e;->a()V

    .line 512
    iget-object v1, p0, Lccc71/utils/ab;->b:Lccc71/bmw/data/a/d;

    iget-object v2, p0, Lccc71/utils/ab;->c:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lccc71/bmw/data/a/d;->b:Ljava/lang/String;

    .line 513
    iget-object v1, p0, Lccc71/utils/ab;->b:Lccc71/bmw/data/a/d;

    invoke-virtual {v0, v1}, Lccc71/bmw/data/a/e;->a(Lccc71/bmw/data/a/d;)V

    .line 514
    invoke-virtual {v0}, Lccc71/bmw/data/a/e;->b()V

    .line 516
    iget-object v0, p0, Lccc71/utils/ab;->a:Lccc71/utils/aa;

    iget-object v0, v0, Lccc71/utils/aa;->a:Lccc71/utils/y;

    invoke-static {v0}, Lccc71/utils/y;->a(Lccc71/utils/y;)Lccc71/utils/ccc71_list_view;

    move-result-object v0

    invoke-virtual {v0}, Lccc71/utils/ccc71_list_view;->b()V

    .line 518
    new-instance v0, Lccc71/utils/ac;

    iget-object v1, p0, Lccc71/utils/ab;->b:Lccc71/bmw/data/a/d;

    invoke-direct {v0, p0, v1}, Lccc71/utils/ac;-><init>(Lccc71/utils/ab;Lccc71/bmw/data/a/d;)V

    .line 533
    new-instance v1, Lccc71/utils/i;

    iget-object v2, p0, Lccc71/utils/ab;->a:Lccc71/utils/aa;

    iget-object v2, v2, Lccc71/utils/aa;->a:Lccc71/utils/y;

    invoke-static {v2}, Lccc71/utils/y;->a(Lccc71/utils/y;)Lccc71/utils/ccc71_list_view;

    move-result-object v2

    invoke-static {v2}, Lccc71/utils/ccc71_list_view;->c(Lccc71/utils/ccc71_list_view;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lccc71/utils/ab;->b:Lccc71/bmw/data/a/d;

    iget v3, v3, Lccc71/bmw/data/a/d;->d:I

    invoke-direct {v1, v2, v0, v3}, Lccc71/utils/i;-><init>(Landroid/content/Context;Lccc71/utils/m;I)V

    .line 534
    invoke-virtual {v1}, Lccc71/utils/i;->show()V

    .line 535
    return-void
.end method
