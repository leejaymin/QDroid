.class final Landroid/support/v4/widget/m;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/SearchView$OnQueryTextListener;


# instance fields
.field final synthetic a:Landroid/support/v4/widget/n;


# direct methods
.method constructor <init>(Landroid/support/v4/widget/n;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/widget/m;->a:Landroid/support/v4/widget/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onQueryTextChange(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/widget/m;->a:Landroid/support/v4/widget/n;

    invoke-interface {v0, p1}, Landroid/support/v4/widget/n;->b(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/widget/m;->a:Landroid/support/v4/widget/n;

    invoke-interface {v0, p1}, Landroid/support/v4/widget/n;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
