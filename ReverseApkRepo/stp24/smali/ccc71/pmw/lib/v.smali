.class final Lccc71/pmw/lib/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lccc71/pmw/lib/t;

.field private final synthetic b:Lccc71/pmw/b/b;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/t;Lccc71/pmw/b/b;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/v;->a:Lccc71/pmw/lib/t;

    iput-object p2, p0, Lccc71/pmw/lib/v;->b:Lccc71/pmw/b/b;

    .line 469
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 474
    iget-object v0, p0, Lccc71/pmw/lib/v;->a:Lccc71/pmw/lib/t;

    invoke-static {v0}, Lccc71/pmw/lib/t;->a(Lccc71/pmw/lib/t;)Lccc71/pmw/lib/at_build;

    move-result-object v0

    invoke-static {v0}, Lccc71/pmw/lib/at_build;->c(Lccc71/pmw/lib/at_build;)Lccc71/pmw/b/a;

    move-result-object v0

    iget-object v1, p0, Lccc71/pmw/lib/v;->b:Lccc71/pmw/b/b;

    invoke-virtual {v0, v1}, Lccc71/pmw/b/a;->b(Lccc71/pmw/b/b;)V

    .line 476
    iget-object v0, p0, Lccc71/pmw/lib/v;->a:Lccc71/pmw/lib/t;

    invoke-static {v0}, Lccc71/pmw/lib/t;->a(Lccc71/pmw/lib/t;)Lccc71/pmw/lib/at_build;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lccc71/pmw/lib/at_build;->a(Lccc71/pmw/lib/at_build;Z)V

    .line 478
    iget-object v0, p0, Lccc71/pmw/lib/v;->a:Lccc71/pmw/lib/t;

    invoke-static {v0}, Lccc71/pmw/lib/t;->a(Lccc71/pmw/lib/t;)Lccc71/pmw/lib/at_build;

    move-result-object v0

    sget v1, Lccc71/pmw/lib/g;->do:I

    invoke-static {v0, v1}, Lccc71/pmw/lib/at_build;->a(Lccc71/pmw/lib/at_build;I)V

    .line 479
    return-void
.end method
