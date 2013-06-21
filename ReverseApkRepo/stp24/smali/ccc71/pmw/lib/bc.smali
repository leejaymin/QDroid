.class final Lccc71/pmw/lib/bc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lccc71/pmw/lib/bb;

.field private final synthetic b:Lccc71/pmw/a/a;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/bb;Lccc71/pmw/a/a;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/bc;->a:Lccc71/pmw/lib/bb;

    iput-object p2, p0, Lccc71/pmw/lib/bc;->b:Lccc71/pmw/a/a;

    .line 2301
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 2306
    iget-object v0, p0, Lccc71/pmw/lib/bc;->a:Lccc71/pmw/lib/bb;

    invoke-static {v0}, Lccc71/pmw/lib/bb;->a(Lccc71/pmw/lib/bb;)Lccc71/pmw/lib/pmw_applist;

    move-result-object v0

    sget-object v1, Lccc71/pmw/a/b;->e:Lccc71/pmw/a/b;

    invoke-static {v0, v1}, Lccc71/pmw/lib/pmw_applist;->a(Lccc71/pmw/lib/pmw_applist;Lccc71/pmw/a/b;)V

    .line 2307
    iget-object v0, p0, Lccc71/pmw/lib/bc;->a:Lccc71/pmw/lib/bb;

    invoke-static {v0}, Lccc71/pmw/lib/bb;->a(Lccc71/pmw/lib/bb;)Lccc71/pmw/lib/pmw_applist;

    move-result-object v0

    iget-object v1, p0, Lccc71/pmw/lib/bc;->b:Lccc71/pmw/a/a;

    iget-object v1, v1, Lccc71/pmw/a/a;->d:Landroid/content/pm/ApplicationInfo;

    iget-object v2, p0, Lccc71/pmw/lib/bc;->a:Lccc71/pmw/lib/bb;

    invoke-static {v2}, Lccc71/pmw/lib/bb;->a(Lccc71/pmw/lib/bb;)Lccc71/pmw/lib/pmw_applist;

    move-result-object v2

    invoke-static {v2}, Lccc71/pmw/lib/pmw_applist;->m(Lccc71/pmw/lib/pmw_applist;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lccc71/pmw/a/d;->b(Landroid/app/Activity;Landroid/content/pm/ApplicationInfo;Landroid/os/Handler;Z)V

    .line 2308
    return-void
.end method
