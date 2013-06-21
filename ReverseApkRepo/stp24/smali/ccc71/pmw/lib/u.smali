.class final Lccc71/pmw/lib/u;
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
    iput-object p1, p0, Lccc71/pmw/lib/u;->a:Lccc71/pmw/lib/t;

    iput-object p2, p0, Lccc71/pmw/lib/u;->b:Lccc71/pmw/b/b;

    .line 458
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 463
    iget-object v0, p0, Lccc71/pmw/lib/u;->b:Lccc71/pmw/b/b;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lccc71/pmw/b/b;->a:Z

    .line 464
    iget-object v0, p0, Lccc71/pmw/lib/u;->a:Lccc71/pmw/lib/t;

    invoke-static {v0}, Lccc71/pmw/lib/t;->a(Lccc71/pmw/lib/t;)Lccc71/pmw/lib/at_build;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lccc71/pmw/lib/at_build;->a(Lccc71/pmw/lib/at_build;Z)V

    .line 466
    iget-object v0, p0, Lccc71/pmw/lib/u;->a:Lccc71/pmw/lib/t;

    invoke-static {v0}, Lccc71/pmw/lib/t;->a(Lccc71/pmw/lib/t;)Lccc71/pmw/lib/at_build;

    move-result-object v0

    sget v1, Lccc71/pmw/lib/g;->do:I

    invoke-static {v0, v1}, Lccc71/pmw/lib/at_build;->a(Lccc71/pmw/lib/at_build;I)V

    .line 467
    return-void
.end method
