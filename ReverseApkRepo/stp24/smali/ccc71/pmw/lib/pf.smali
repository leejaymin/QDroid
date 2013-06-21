.class final Lccc71/pmw/lib/pf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lccc71/pmw/lib/pmw_terminal;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/pmw_terminal;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/pf;->a:Lccc71/pmw/lib/pmw_terminal;

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 208
    iget-object v0, p0, Lccc71/pmw/lib/pf;->a:Lccc71/pmw/lib/pmw_terminal;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_terminal;->a(Lccc71/pmw/lib/pmw_terminal;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 209
    iget-object v0, p0, Lccc71/pmw/lib/pf;->a:Lccc71/pmw/lib/pmw_terminal;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_terminal;->b(Lccc71/pmw/lib/pmw_terminal;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 210
    iget-object v0, p0, Lccc71/pmw/lib/pf;->a:Lccc71/pmw/lib/pmw_terminal;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_terminal;->b(Lccc71/pmw/lib/pmw_terminal;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    :cond_0
    iget-object v7, p0, Lccc71/pmw/lib/pf;->a:Lccc71/pmw/lib/pmw_terminal;

    new-instance v0, Lccc71/pmw/b/h;

    iget-object v2, p0, Lccc71/pmw/lib/pf;->a:Lccc71/pmw/lib/pmw_terminal;

    invoke-static {v2}, Lccc71/pmw/lib/pmw_terminal;->c(Lccc71/pmw/lib/pmw_terminal;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lccc71/pmw/lib/pf;->a:Lccc71/pmw/lib/pmw_terminal;

    invoke-static {v3}, Lccc71/pmw/lib/pmw_terminal;->d(Lccc71/pmw/lib/pmw_terminal;)Landroid/widget/CheckBox;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    const/4 v4, 0x0

    move v6, v5

    invoke-direct/range {v0 .. v6}, Lccc71/pmw/b/h;-><init>(Ljava/lang/String;Landroid/os/Handler;ZLjava/lang/Object;ZZ)V

    invoke-static {v7, v0}, Lccc71/pmw/lib/pmw_terminal;->a(Lccc71/pmw/lib/pmw_terminal;Lccc71/pmw/b/h;)V

    .line 214
    iget-object v0, p0, Lccc71/pmw/lib/pf;->a:Lccc71/pmw/lib/pmw_terminal;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_terminal;->a(Lccc71/pmw/lib/pmw_terminal;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 215
    iget-object v0, p0, Lccc71/pmw/lib/pf;->a:Lccc71/pmw/lib/pmw_terminal;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_terminal;->e(Lccc71/pmw/lib/pmw_terminal;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 216
    iget-object v0, p0, Lccc71/pmw/lib/pf;->a:Lccc71/pmw/lib/pmw_terminal;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_terminal;->d(Lccc71/pmw/lib/pmw_terminal;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 217
    iget-object v0, p0, Lccc71/pmw/lib/pf;->a:Lccc71/pmw/lib/pmw_terminal;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_terminal;->f(Lccc71/pmw/lib/pmw_terminal;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 218
    iget-object v0, p0, Lccc71/pmw/lib/pf;->a:Lccc71/pmw/lib/pmw_terminal;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_terminal;->g(Lccc71/pmw/lib/pmw_terminal;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 219
    iget-object v0, p0, Lccc71/pmw/lib/pf;->a:Lccc71/pmw/lib/pmw_terminal;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_terminal;->h(Lccc71/pmw/lib/pmw_terminal;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 220
    return-void
.end method
