.class final Lccc71/pmw/lib/gm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# instance fields
.field final synthetic a:Lccc71/pmw/lib/pmw_logcat;

.field private final synthetic b:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/pmw_logcat;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/gm;->a:Lccc71/pmw/lib/pmw_logcat;

    iput-object p2, p0, Lccc71/pmw/lib/gm;->b:Ljava/util/ArrayList;

    .line 933
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
    .line 938
    iget-object v0, p0, Lccc71/pmw/lib/gm;->a:Lccc71/pmw/lib/pmw_logcat;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_logcat;->m(Lccc71/pmw/lib/pmw_logcat;)V

    .line 939
    iget-object v1, p0, Lccc71/pmw/lib/gm;->a:Lccc71/pmw/lib/pmw_logcat;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v0, p0, Lccc71/pmw/lib/gm;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lccc71/pmw/lib/pmw_logcat;->b(Lccc71/pmw/lib/pmw_logcat;Ljava/lang/String;)V

    .line 941
    iget-object v0, p0, Lccc71/pmw/lib/gm;->a:Lccc71/pmw/lib/pmw_logcat;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_logcat;->n(Lccc71/pmw/lib/pmw_logcat;)V

    .line 943
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 944
    return-void
.end method
