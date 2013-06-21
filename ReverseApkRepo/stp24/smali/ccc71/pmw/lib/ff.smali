.class final Lccc71/pmw/lib/ff;
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
    iput-object p1, p0, Lccc71/pmw/lib/ff;->a:Lccc71/pmw/lib/pmw_easy_apps;

    .line 654
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lccc71/pmw/lib/ff;)Lccc71/pmw/lib/pmw_easy_apps;
    .locals 1
    .parameter

    .prologue
    .line 654
    iget-object v0, p0, Lccc71/pmw/lib/ff;->a:Lccc71/pmw/lib/pmw_easy_apps;

    return-object v0
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 659
    iget-object v0, p0, Lccc71/pmw/lib/ff;->a:Lccc71/pmw/lib/pmw_easy_apps;

    invoke-static {v0}, Lccc71/utils/g;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 661
    iget-object v0, p0, Lccc71/pmw/lib/ff;->a:Lccc71/pmw/lib/pmw_easy_apps;

    iget-object v1, p0, Lccc71/pmw/lib/ff;->a:Lccc71/pmw/lib/pmw_easy_apps;

    sget v2, Lccc71/pmw/lib/g;->cM:I

    invoke-virtual {v1, v2}, Lccc71/pmw/lib/pmw_easy_apps;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 662
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 681
    :goto_0
    return-void

    .line 666
    :cond_0
    new-instance v0, Lccc71/pmw/lib/ew;

    iget-object v1, p0, Lccc71/pmw/lib/ff;->a:Lccc71/pmw/lib/pmw_easy_apps;

    invoke-direct {v0, v1}, Lccc71/pmw/lib/ew;-><init>(Landroid/content/Context;)V

    .line 667
    new-instance v1, Lccc71/pmw/lib/fg;

    invoke-direct {v1, p0}, Lccc71/pmw/lib/fg;-><init>(Lccc71/pmw/lib/ff;)V

    invoke-virtual {v0, v1}, Lccc71/pmw/lib/ew;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 679
    invoke-virtual {v0}, Lccc71/pmw/lib/ew;->show()V

    goto :goto_0
.end method
