.class final Lccc71/pmw/lib/gl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# instance fields
.field final synthetic a:Lccc71/pmw/lib/pmw_logcat;

.field private final synthetic b:Lccc71/pmw/b/q;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/pmw_logcat;Lccc71/pmw/b/q;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/gl;->a:Lccc71/pmw/lib/pmw_logcat;

    iput-object p2, p0, Lccc71/pmw/lib/gl;->b:Lccc71/pmw/b/q;

    .line 875
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;IZ)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 880
    iget-object v0, p0, Lccc71/pmw/lib/gl;->b:Lccc71/pmw/b/q;

    invoke-virtual {v0, p2}, Lccc71/pmw/b/q;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccc71/pmw/b/p;

    .line 882
    iget-object v1, p0, Lccc71/pmw/lib/gl;->a:Lccc71/pmw/lib/pmw_logcat;

    invoke-static {v1}, Lccc71/pmw/lib/pmw_logcat;->m(Lccc71/pmw/lib/pmw_logcat;)V

    .line 883
    iget-object v1, p0, Lccc71/pmw/lib/gl;->a:Lccc71/pmw/lib/pmw_logcat;

    new-instance v2, Ljava/lang/StringBuilder;

    iget v0, v0, Lccc71/pmw/b/p;->a:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lccc71/pmw/lib/pmw_logcat;->b(Lccc71/pmw/lib/pmw_logcat;Ljava/lang/String;)V

    .line 886
    iget-object v0, p0, Lccc71/pmw/lib/gl;->a:Lccc71/pmw/lib/pmw_logcat;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_logcat;->n(Lccc71/pmw/lib/pmw_logcat;)V

    .line 888
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 889
    return-void
.end method
