.class final Lccc71/pmw/lib/jw;
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
    iput-object p1, p0, Lccc71/pmw/lib/jw;->a:Lccc71/pmw/lib/pmw_process;

    iput-object p2, p0, Lccc71/pmw/lib/jw;->b:Landroid/content/pm/ApplicationInfo;

    .line 583
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lccc71/pmw/lib/jw;)Lccc71/pmw/lib/pmw_process;
    .locals 1
    .parameter

    .prologue
    .line 583
    iget-object v0, p0, Lccc71/pmw/lib/jw;->a:Lccc71/pmw/lib/pmw_process;

    return-object v0
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 588
    new-instance v0, Lccc71/pmw/lib/jx;

    iget-object v1, p0, Lccc71/pmw/lib/jw;->b:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v0, p0, v1}, Lccc71/pmw/lib/jx;-><init>(Lccc71/pmw/lib/jw;Landroid/content/pm/ApplicationInfo;)V

    .line 598
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 599
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 600
    return-void
.end method
