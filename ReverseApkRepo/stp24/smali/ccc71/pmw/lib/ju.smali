.class final Lccc71/pmw/lib/ju;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lccc71/pmw/lib/pmw_process;

.field private final synthetic b:Landroid/content/pm/ApplicationInfo;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/pmw_process;Landroid/content/pm/ApplicationInfo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/ju;->a:Lccc71/pmw/lib/pmw_process;

    iput-object p2, p0, Lccc71/pmw/lib/ju;->b:Landroid/content/pm/ApplicationInfo;

    .line 552
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lccc71/pmw/lib/ju;)Lccc71/pmw/lib/pmw_process;
    .locals 1
    .parameter

    .prologue
    .line 552
    iget-object v0, p0, Lccc71/pmw/lib/ju;->a:Lccc71/pmw/lib/pmw_process;

    return-object v0
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 557
    new-instance v0, Lccc71/pmw/lib/jv;

    iget-object v1, p0, Lccc71/pmw/lib/ju;->b:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v0, p0, v1}, Lccc71/pmw/lib/jv;-><init>(Lccc71/pmw/lib/ju;Landroid/content/pm/ApplicationInfo;)V

    .line 567
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 568
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 569
    return-void
.end method
