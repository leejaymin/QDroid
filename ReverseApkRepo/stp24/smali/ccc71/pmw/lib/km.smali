.class final Lccc71/pmw/lib/km;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lccc71/pmw/lib/kl;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/kl;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/km;->a:Lccc71/pmw/lib/kl;

    .line 306
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 311
    iget-object v0, p0, Lccc71/pmw/lib/km;->a:Lccc71/pmw/lib/kl;

    invoke-static {v0}, Lccc71/pmw/lib/kl;->a(Lccc71/pmw/lib/kl;)Lccc71/pmw/lib/pmw_process;

    move-result-object v0

    iget-object v1, p0, Lccc71/pmw/lib/km;->a:Lccc71/pmw/lib/kl;

    invoke-static {v1}, Lccc71/pmw/lib/kl;->a(Lccc71/pmw/lib/kl;)Lccc71/pmw/lib/pmw_process;

    move-result-object v1

    invoke-static {v1}, Lccc71/pmw/lib/pmw_process;->a(Lccc71/pmw/lib/pmw_process;)Lccc71/pmw/b/p;

    move-result-object v1

    iget-object v1, v1, Lccc71/pmw/b/p;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lccc71/pmw/a/d;->b(Landroid/app/Activity;Ljava/lang/String;)V

    .line 312
    return-void
.end method
