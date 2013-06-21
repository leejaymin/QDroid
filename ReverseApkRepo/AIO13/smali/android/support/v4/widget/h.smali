.class final Landroid/support/v4/widget/h;
.super Landroid/support/v4/widget/k;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/widget/k;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Landroid/view/View;
    .locals 1

    new-instance v0, Landroid/widget/SearchView;

    invoke-direct {v0, p1}, Landroid/widget/SearchView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public final a(Landroid/support/v4/widget/SearchViewCompat$OnQueryTextListenerCompat;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Landroid/support/v4/widget/i;

    invoke-direct {v0, p0, p1}, Landroid/support/v4/widget/i;-><init>(Landroid/support/v4/widget/h;Landroid/support/v4/widget/SearchViewCompat$OnQueryTextListenerCompat;)V

    new-instance v1, Landroid/support/v4/widget/m;

    invoke-direct {v1, v0}, Landroid/support/v4/widget/m;-><init>(Landroid/support/v4/widget/n;)V

    return-object v1
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/widget/SearchView;

    check-cast p2, Landroid/widget/SearchView$OnQueryTextListener;

    invoke-virtual {p1, p2}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    return-void
.end method
