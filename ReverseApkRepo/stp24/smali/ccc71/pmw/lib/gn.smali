.class final Lccc71/pmw/lib/gn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lccc71/pmw/lib/pmw_logcat;

.field private final synthetic b:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/pmw_logcat;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/gn;->a:Lccc71/pmw/lib/pmw_logcat;

    iput-object p2, p0, Lccc71/pmw/lib/gn;->b:Landroid/widget/EditText;

    .line 988
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 992
    iget-object v0, p0, Lccc71/pmw/lib/gn;->a:Lccc71/pmw/lib/pmw_logcat;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_logcat;->m(Lccc71/pmw/lib/pmw_logcat;)V

    .line 993
    iget-object v0, p0, Lccc71/pmw/lib/gn;->a:Lccc71/pmw/lib/pmw_logcat;

    iget-object v1, p0, Lccc71/pmw/lib/gn;->b:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lccc71/pmw/lib/pmw_logcat;->b(Lccc71/pmw/lib/pmw_logcat;Ljava/lang/String;)V

    .line 995
    iget-object v0, p0, Lccc71/pmw/lib/gn;->a:Lccc71/pmw/lib/pmw_logcat;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_logcat;->n(Lccc71/pmw/lib/pmw_logcat;)V

    .line 996
    return-void
.end method
