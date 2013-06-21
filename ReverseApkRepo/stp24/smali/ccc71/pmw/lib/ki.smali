.class final Lccc71/pmw/lib/ki;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lccc71/pmw/lib/kh;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/kh;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/ki;->a:Lccc71/pmw/lib/kh;

    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 231
    iget-object v0, p0, Lccc71/pmw/lib/ki;->a:Lccc71/pmw/lib/kh;

    invoke-static {v0}, Lccc71/pmw/lib/kh;->a(Lccc71/pmw/lib/kh;)Lccc71/pmw/lib/pmw_process;

    move-result-object v0

    iget-object v1, p0, Lccc71/pmw/lib/ki;->a:Lccc71/pmw/lib/kh;

    invoke-static {v1}, Lccc71/pmw/lib/kh;->a(Lccc71/pmw/lib/kh;)Lccc71/pmw/lib/pmw_process;

    move-result-object v1

    invoke-static {v1}, Lccc71/pmw/lib/pmw_process;->b(Lccc71/pmw/lib/pmw_process;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lccc71/pmw/lib/ki;->a:Lccc71/pmw/lib/kh;

    invoke-static {v2}, Lccc71/pmw/lib/kh;->a(Lccc71/pmw/lib/kh;)Lccc71/pmw/lib/pmw_process;

    move-result-object v2

    invoke-static {v2}, Lccc71/pmw/lib/pmw_process;->a(Lccc71/pmw/lib/pmw_process;)Lccc71/pmw/b/p;

    move-result-object v2

    iget-object v2, v2, Lccc71/pmw/b/p;->d:Ljava/lang/String;

    iget-object v3, p0, Lccc71/pmw/lib/ki;->a:Lccc71/pmw/lib/kh;

    invoke-static {v3}, Lccc71/pmw/lib/kh;->a(Lccc71/pmw/lib/kh;)Lccc71/pmw/lib/pmw_process;

    move-result-object v3

    invoke-static {v3}, Lccc71/pmw/lib/pmw_settings;->i(Landroid/content/Context;)Z

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lccc71/pmw/a/d;->a(Landroid/app/Activity;Landroid/os/Handler;Ljava/lang/String;Z)V

    .line 232
    return-void
.end method
