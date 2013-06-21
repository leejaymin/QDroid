.class final Lccc71/pmw/lib/fh;
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
    iput-object p1, p0, Lccc71/pmw/lib/fh;->a:Lccc71/pmw/lib/pmw_easy_apps;

    .line 684
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lccc71/pmw/lib/fh;)Lccc71/pmw/lib/pmw_easy_apps;
    .locals 1
    .parameter

    .prologue
    .line 684
    iget-object v0, p0, Lccc71/pmw/lib/fh;->a:Lccc71/pmw/lib/pmw_easy_apps;

    return-object v0
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 689
    new-instance v0, Lccc71/pmw/lib/fi;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/fi;-><init>(Lccc71/pmw/lib/fh;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 708
    invoke-virtual {v0, v1}, Lccc71/pmw/lib/fi;->c([Ljava/lang/Object;)Lccc71/utils/android/a;

    .line 709
    return-void
.end method
