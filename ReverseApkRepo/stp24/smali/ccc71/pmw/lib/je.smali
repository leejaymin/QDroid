.class final Lccc71/pmw/lib/je;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lccc71/pmw/lib/pmw_monitor;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/pmw_monitor;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/je;->a:Lccc71/pmw/lib/pmw_monitor;

    .line 1031
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1036
    sget-boolean v0, Lccc71/pmw/lib/pmw_monitor;->b:Z

    if-eqz v0, :cond_0

    .line 1038
    iget-object v0, p0, Lccc71/pmw/lib/je;->a:Lccc71/pmw/lib/pmw_monitor;

    invoke-static {v0, v2}, Lccc71/pmw/lib/pmw_settings;->b(Landroid/content/Context;Z)V

    .line 1039
    sput-boolean v2, Lccc71/pmw/lib/pmw_monitor;->b:Z

    .line 1041
    iget-object v0, p0, Lccc71/pmw/lib/je;->a:Lccc71/pmw/lib/pmw_monitor;

    sget v1, Lccc71/pmw/lib/d;->F:I

    invoke-virtual {v0, v1}, Lccc71/pmw/lib/pmw_monitor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 1042
    sget v1, Lccc71/pmw/lib/c;->O:I

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 1044
    iget-object v0, p0, Lccc71/pmw/lib/je;->a:Lccc71/pmw/lib/pmw_monitor;

    invoke-virtual {v0, v2}, Lccc71/pmw/lib/pmw_monitor;->c(Z)V

    .line 1045
    iget-object v0, p0, Lccc71/pmw/lib/je;->a:Lccc71/pmw/lib/pmw_monitor;

    invoke-virtual {v0, v2}, Lccc71/pmw/lib/pmw_monitor;->b(Z)V

    .line 1057
    :goto_0
    return-void

    .line 1049
    :cond_0
    iget-object v0, p0, Lccc71/pmw/lib/je;->a:Lccc71/pmw/lib/pmw_monitor;

    invoke-static {v0, v1}, Lccc71/pmw/lib/pmw_settings;->b(Landroid/content/Context;Z)V

    .line 1050
    sput-boolean v1, Lccc71/pmw/lib/pmw_monitor;->b:Z

    .line 1052
    iget-object v0, p0, Lccc71/pmw/lib/je;->a:Lccc71/pmw/lib/pmw_monitor;

    sget v1, Lccc71/pmw/lib/d;->F:I

    invoke-virtual {v0, v1}, Lccc71/pmw/lib/pmw_monitor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 1053
    sget v1, Lccc71/pmw/lib/c;->N:I

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 1055
    iget-object v0, p0, Lccc71/pmw/lib/je;->a:Lccc71/pmw/lib/pmw_monitor;

    invoke-virtual {v0, v2}, Lccc71/pmw/lib/pmw_monitor;->a(Z)V

    goto :goto_0
.end method
