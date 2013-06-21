.class final Lccc71/pmw/lib/or;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field final synthetic a:Lccc71/pmw/lib/pmw_sysctl;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/pmw_sysctl;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/or;->a:Lccc71/pmw/lib/pmw_sysctl;

    .line 286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 291
    const-string v0, "process_monitor_widget"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onEditorAction="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " => "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    and-int/lit8 v0, p2, 0x6

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    .line 294
    iget-object v0, p0, Lccc71/pmw/lib/or;->a:Lccc71/pmw/lib/pmw_sysctl;

    invoke-static {v0, p1}, Lccc71/pmw/lib/pmw_sysctl;->b(Lccc71/pmw/lib/pmw_sysctl;Landroid/view/View;)V

    .line 305
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 296
    :cond_1
    and-int/lit8 v0, p2, 0x5

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 298
    iget-object v0, p0, Lccc71/pmw/lib/or;->a:Lccc71/pmw/lib/pmw_sysctl;

    invoke-static {v0, p1}, Lccc71/pmw/lib/pmw_sysctl;->b(Lccc71/pmw/lib/pmw_sysctl;Landroid/view/View;)V

    goto :goto_0

    .line 300
    :cond_2
    and-int/lit8 v0, p2, 0x7

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 302
    iget-object v0, p0, Lccc71/pmw/lib/or;->a:Lccc71/pmw/lib/pmw_sysctl;

    invoke-static {v0, p1}, Lccc71/pmw/lib/pmw_sysctl;->b(Lccc71/pmw/lib/pmw_sysctl;Landroid/view/View;)V

    goto :goto_0
.end method
