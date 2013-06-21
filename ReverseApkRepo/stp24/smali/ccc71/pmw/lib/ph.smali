.class final Lccc71/pmw/lib/ph;
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
    iput-object p1, p0, Lccc71/pmw/lib/ph;->a:Lccc71/pmw/lib/pmw_terminal;

    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    const/4 v2, 0x3

    .line 286
    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 288
    if-eqz v0, :cond_0

    .line 290
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v2, :cond_1

    .line 291
    iget-object v1, p0, Lccc71/pmw/lib/ph;->a:Lccc71/pmw/lib/pmw_terminal;

    invoke-static {v1}, Lccc71/pmw/lib/pmw_terminal;->a(Lccc71/pmw/lib/pmw_terminal;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, " (su)"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 295
    :cond_0
    :goto_0
    return-void

    .line 293
    :cond_1
    iget-object v1, p0, Lccc71/pmw/lib/ph;->a:Lccc71/pmw/lib/pmw_terminal;

    invoke-static {v1}, Lccc71/pmw/lib/pmw_terminal;->a(Lccc71/pmw/lib/pmw_terminal;)Landroid/widget/EditText;

    move-result-object v1

    const-string v2, " (su)"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
