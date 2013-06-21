.class final Lccc71/pmw/lib/bg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lccc71/pmw/lib/pmw_applist;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/pmw_applist;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/bg;->a:Lccc71/pmw/lib/pmw_applist;

    .line 2685
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 2690
    iget-object v0, p0, Lccc71/pmw/lib/bg;->a:Lccc71/pmw/lib/pmw_applist;

    invoke-static {v0}, Lccc71/utils/g;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2692
    iget-object v0, p0, Lccc71/pmw/lib/bg;->a:Lccc71/pmw/lib/pmw_applist;

    iget-object v1, p0, Lccc71/pmw/lib/bg;->a:Lccc71/pmw/lib/pmw_applist;

    sget v2, Lccc71/pmw/lib/g;->cM:I

    invoke-virtual {v1, v2}, Lccc71/pmw/lib/pmw_applist;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 2693
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2700
    :goto_0
    return-void

    .line 2697
    :cond_0
    iget-object v0, p0, Lccc71/pmw/lib/bg;->a:Lccc71/pmw/lib/pmw_applist;

    invoke-virtual {v0, p1}, Lccc71/pmw/lib/pmw_applist;->registerForContextMenu(Landroid/view/View;)V

    .line 2698
    iget-object v0, p0, Lccc71/pmw/lib/bg;->a:Lccc71/pmw/lib/pmw_applist;

    invoke-virtual {v0, p1}, Lccc71/pmw/lib/pmw_applist;->openContextMenu(Landroid/view/View;)V

    goto :goto_0
.end method
