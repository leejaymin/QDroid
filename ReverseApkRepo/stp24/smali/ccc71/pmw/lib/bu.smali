.class final Lccc71/pmw/lib/bu;
.super Lccc71/utils/android/a;
.source "SourceFile"


# instance fields
.field final synthetic a:Lccc71/pmw/lib/pmw_applist;

.field private final synthetic b:Landroid/widget/TableLayout;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/pmw_applist;Landroid/widget/TableLayout;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/bu;->a:Lccc71/pmw/lib/pmw_applist;

    iput-object p2, p0, Lccc71/pmw/lib/bu;->b:Landroid/widget/TableLayout;

    .line 510
    invoke-direct {p0}, Lccc71/utils/android/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected final varargs synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter

    .prologue
    .line 1
    iget-object v0, p0, Lccc71/pmw/lib/bu;->a:Lccc71/pmw/lib/pmw_applist;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_applist;->e(Lccc71/pmw/lib/pmw_applist;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lccc71/pmw/lib/bu;->b:Landroid/widget/TableLayout;

    iget-object v2, p0, Lccc71/pmw/lib/bu;->b:Landroid/widget/TableLayout;

    invoke-static {}, Lccc71/pmw/lib/pmw_applist;->l()I

    move-result v3

    invoke-static {v2, v3}, Lccc71/pmw/lib/pmw_applist;->a(Landroid/widget/TableLayout;I)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lccc71/pmw/lib/pmw_applist;->a(Landroid/os/Handler;Landroid/widget/TableLayout;Ljava/util/ArrayList;)V

    const/4 v0, 0x0

    return-object v0
.end method
