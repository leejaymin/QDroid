.class final Lccc71/pmw/lib/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lccc71/pmw/lib/r;

.field private final synthetic b:Landroid/widget/EditText;

.field private final synthetic c:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/r;Landroid/widget/EditText;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/s;->a:Lccc71/pmw/lib/r;

    iput-object p2, p0, Lccc71/pmw/lib/s;->b:Landroid/widget/EditText;

    iput-object p3, p0, Lccc71/pmw/lib/s;->c:Landroid/widget/EditText;

    .line 303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 308
    iget-object v0, p0, Lccc71/pmw/lib/s;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 309
    iget-object v1, p0, Lccc71/pmw/lib/s;->c:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 311
    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 313
    iget-object v2, p0, Lccc71/pmw/lib/s;->a:Lccc71/pmw/lib/r;

    invoke-static {v2}, Lccc71/pmw/lib/r;->a(Lccc71/pmw/lib/r;)Lccc71/pmw/lib/at_build;

    move-result-object v2

    invoke-static {v2}, Lccc71/pmw/lib/at_build;->c(Lccc71/pmw/lib/at_build;)Lccc71/pmw/b/a;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lccc71/pmw/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    iget-object v0, p0, Lccc71/pmw/lib/s;->a:Lccc71/pmw/lib/r;

    invoke-static {v0}, Lccc71/pmw/lib/r;->a(Lccc71/pmw/lib/r;)Lccc71/pmw/lib/at_build;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lccc71/pmw/lib/at_build;->a(Lccc71/pmw/lib/at_build;Z)V

    .line 317
    iget-object v0, p0, Lccc71/pmw/lib/s;->a:Lccc71/pmw/lib/r;

    invoke-static {v0}, Lccc71/pmw/lib/r;->a(Lccc71/pmw/lib/r;)Lccc71/pmw/lib/at_build;

    move-result-object v0

    sget v1, Lccc71/pmw/lib/g;->do:I

    invoke-static {v0, v1}, Lccc71/pmw/lib/at_build;->a(Lccc71/pmw/lib/at_build;I)V

    .line 319
    :cond_0
    return-void
.end method
