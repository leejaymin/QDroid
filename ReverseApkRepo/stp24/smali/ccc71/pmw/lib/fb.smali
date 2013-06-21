.class final Lccc71/pmw/lib/fb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lccc71/pmw/lib/fa;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/fa;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/fb;->a:Lccc71/pmw/lib/fa;

    .line 598
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 603
    invoke-static {}, Lccc71/pmw/lib/pmw_easy_apps;->e()Landroid/app/ProgressDialog;

    move-result-object v1

    iget-object v0, p0, Lccc71/pmw/lib/fb;->a:Lccc71/pmw/lib/fa;

    invoke-static {v0}, Lccc71/pmw/lib/fa;->a(Lccc71/pmw/lib/fa;)Lccc71/pmw/lib/ez;

    move-result-object v0

    invoke-static {v0}, Lccc71/pmw/lib/ez;->a(Lccc71/pmw/lib/ez;)Lccc71/pmw/lib/pmw_easy_apps;

    move-result-object v0

    invoke-static {v0}, Lccc71/pmw/lib/pmw_easy_apps;->g(Lccc71/pmw/lib/pmw_easy_apps;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 604
    return-void
.end method
