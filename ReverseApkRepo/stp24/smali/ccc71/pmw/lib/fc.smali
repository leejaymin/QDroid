.class final Lccc71/pmw/lib/fc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lccc71/pmw/lib/pmw_easy_apps;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/pmw_easy_apps;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/fc;->a:Lccc71/pmw/lib/pmw_easy_apps;

    .line 613
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lccc71/pmw/lib/fc;)Lccc71/pmw/lib/pmw_easy_apps;
    .locals 1
    .parameter

    .prologue
    .line 613
    iget-object v0, p0, Lccc71/pmw/lib/fc;->a:Lccc71/pmw/lib/pmw_easy_apps;

    return-object v0
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 618
    new-instance v0, Lccc71/pmw/a/ag;

    invoke-direct {v0}, Lccc71/pmw/a/ag;-><init>()V

    .line 619
    new-instance v1, Lccc71/pmw/lib/fd;

    invoke-direct {v1, p0, v0}, Lccc71/pmw/lib/fd;-><init>(Lccc71/pmw/lib/fc;Lccc71/pmw/a/ag;)V

    .line 630
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setPriority(I)V

    .line 631
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 633
    return-void
.end method
