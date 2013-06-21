.class final Lccc71/pmw/lib/gx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lccc71/pmw/lib/pmw_logcat;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/pmw_logcat;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/gx;->a:Lccc71/pmw/lib/pmw_logcat;

    .line 672
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lccc71/pmw/lib/gx;)Lccc71/pmw/lib/pmw_logcat;
    .locals 1
    .parameter

    .prologue
    .line 672
    iget-object v0, p0, Lccc71/pmw/lib/gx;->a:Lccc71/pmw/lib/pmw_logcat;

    return-object v0
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 677
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 678
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 680
    invoke-static {}, Lccc71/pmw/lib/pmw_logcat;->e()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v5

    move v1, v2

    .line 681
    :goto_0
    if-lt v1, v5, :cond_0

    .line 691
    new-instance v0, Lccc71/pmw/lib/gy;

    invoke-direct {v0, p0, v3, v4}, Lccc71/pmw/lib/gy;-><init>(Lccc71/pmw/lib/gx;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    new-array v1, v2, [Ljava/lang/Void;

    .line 797
    invoke-virtual {v0, v1}, Lccc71/pmw/lib/gy;->c([Ljava/lang/Object;)Lccc71/utils/android/a;

    .line 798
    return-void

    .line 683
    :cond_0
    rem-int/lit8 v0, v1, 0x2

    if-nez v0, :cond_1

    .line 684
    invoke-static {}, Lccc71/pmw/lib/pmw_logcat;->e()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lccc71/utils/ccc71_text_view;

    .line 687
    invoke-virtual {v0}, Lccc71/utils/ccc71_text_view;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 688
    invoke-virtual {v0}, Lccc71/utils/ccc71_text_view;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 681
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method
