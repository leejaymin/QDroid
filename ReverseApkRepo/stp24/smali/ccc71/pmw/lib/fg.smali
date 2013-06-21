.class final Lccc71/pmw/lib/fg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic a:Lccc71/pmw/lib/ff;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/ff;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/fg;->a:Lccc71/pmw/lib/ff;

    .line 667
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter

    .prologue
    .line 674
    iget-object v0, p0, Lccc71/pmw/lib/fg;->a:Lccc71/pmw/lib/ff;

    invoke-static {v0}, Lccc71/pmw/lib/ff;->a(Lccc71/pmw/lib/ff;)Lccc71/pmw/lib/pmw_easy_apps;

    move-result-object v0

    invoke-static {v0}, Lccc71/pmw/lib/pmw_easy_apps;->l(Lccc71/pmw/lib/pmw_easy_apps;)V

    .line 676
    iget-object v0, p0, Lccc71/pmw/lib/fg;->a:Lccc71/pmw/lib/ff;

    invoke-static {v0}, Lccc71/pmw/lib/ff;->a(Lccc71/pmw/lib/ff;)Lccc71/pmw/lib/pmw_easy_apps;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lccc71/pmw/lib/pmw_booter_service;->a(Landroid/content/Context;Z)Z

    .line 677
    return-void
.end method
