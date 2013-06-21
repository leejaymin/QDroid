.class final Lccc71/pmw/lib/jf;
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
    iput-object p1, p0, Lccc71/pmw/lib/jf;->a:Lccc71/pmw/lib/pmw_monitor;

    .line 1060
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

    .line 1065
    iget-object v0, p0, Lccc71/pmw/lib/jf;->a:Lccc71/pmw/lib/pmw_monitor;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_monitor;->e(Lccc71/pmw/lib/pmw_monitor;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1067
    iget-object v0, p0, Lccc71/pmw/lib/jf;->a:Lccc71/pmw/lib/pmw_monitor;

    invoke-static {v0, v2}, Lccc71/pmw/lib/pmw_settings;->a(Landroid/content/Context;Z)V

    .line 1068
    iget-object v0, p0, Lccc71/pmw/lib/jf;->a:Lccc71/pmw/lib/pmw_monitor;

    invoke-static {v0, v2}, Lccc71/pmw/lib/pmw_monitor;->b(Lccc71/pmw/lib/pmw_monitor;Z)V

    .line 1070
    iget-object v0, p0, Lccc71/pmw/lib/jf;->a:Lccc71/pmw/lib/pmw_monitor;

    sget v1, Lccc71/pmw/lib/d;->A:I

    invoke-virtual {v0, v1}, Lccc71/pmw/lib/pmw_monitor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 1071
    sget v1, Lccc71/pmw/lib/c;->o:I

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 1073
    iget-object v0, p0, Lccc71/pmw/lib/jf;->a:Lccc71/pmw/lib/pmw_monitor;

    invoke-virtual {v0, v2}, Lccc71/pmw/lib/pmw_monitor;->c(Z)V

    .line 1074
    iget-object v0, p0, Lccc71/pmw/lib/jf;->a:Lccc71/pmw/lib/pmw_monitor;

    invoke-virtual {v0, v2}, Lccc71/pmw/lib/pmw_monitor;->b(Z)V

    .line 1087
    :goto_0
    return-void

    .line 1078
    :cond_0
    iget-object v0, p0, Lccc71/pmw/lib/jf;->a:Lccc71/pmw/lib/pmw_monitor;

    invoke-static {v0, v1}, Lccc71/pmw/lib/pmw_settings;->a(Landroid/content/Context;Z)V

    .line 1079
    iget-object v0, p0, Lccc71/pmw/lib/jf;->a:Lccc71/pmw/lib/pmw_monitor;

    invoke-static {v0, v1}, Lccc71/pmw/lib/pmw_monitor;->b(Lccc71/pmw/lib/pmw_monitor;Z)V

    .line 1081
    iget-object v0, p0, Lccc71/pmw/lib/jf;->a:Lccc71/pmw/lib/pmw_monitor;

    sget v1, Lccc71/pmw/lib/d;->A:I

    invoke-virtual {v0, v1}, Lccc71/pmw/lib/pmw_monitor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 1082
    sget v1, Lccc71/pmw/lib/c;->n:I

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 1084
    iget-object v0, p0, Lccc71/pmw/lib/jf;->a:Lccc71/pmw/lib/pmw_monitor;

    invoke-virtual {v0, v2}, Lccc71/pmw/lib/pmw_monitor;->c(Z)V

    .line 1085
    iget-object v0, p0, Lccc71/pmw/lib/jf;->a:Lccc71/pmw/lib/pmw_monitor;

    invoke-virtual {v0, v2}, Lccc71/pmw/lib/pmw_monitor;->b(Z)V

    goto :goto_0
.end method
