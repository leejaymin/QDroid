.class final Lccc71/pmw/lib/gw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lccc71/pmw/lib/gr;

.field private final synthetic b:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/gr;Landroid/app/AlertDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/gw;->a:Lccc71/pmw/lib/gr;

    iput-object p2, p0, Lccc71/pmw/lib/gw;->b:Landroid/app/AlertDialog;

    .line 641
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 646
    iget-object v0, p0, Lccc71/pmw/lib/gw;->a:Lccc71/pmw/lib/gr;

    iget-object v0, v0, Lccc71/pmw/lib/gr;->a:Lccc71/pmw/lib/pmw_logcat;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_logcat;->c(Lccc71/pmw/lib/pmw_logcat;)V

    .line 648
    iget-object v0, p0, Lccc71/pmw/lib/gw;->b:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 652
    :try_start_0
    invoke-static {}, Lccc71/pmw/lib/pmw_logcat;->e()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 661
    :goto_0
    iget-object v0, p0, Lccc71/pmw/lib/gw;->a:Lccc71/pmw/lib/gr;

    iget-object v0, v0, Lccc71/pmw/lib/gr;->a:Lccc71/pmw/lib/pmw_logcat;

    invoke-static {v0, v4}, Lccc71/pmw/lib/pmw_logcat;->b(Lccc71/pmw/lib/pmw_logcat;Z)V

    .line 662
    iget-object v0, p0, Lccc71/pmw/lib/gw;->a:Lccc71/pmw/lib/gr;

    iget-object v0, v0, Lccc71/pmw/lib/gr;->a:Lccc71/pmw/lib/pmw_logcat;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lccc71/pmw/lib/pmw_logcat;->c(Lccc71/pmw/lib/pmw_logcat;Z)V

    .line 663
    iget-object v0, p0, Lccc71/pmw/lib/gw;->a:Lccc71/pmw/lib/gr;

    iget-object v0, v0, Lccc71/pmw/lib/gr;->a:Lccc71/pmw/lib/pmw_logcat;

    invoke-static {v0, v4}, Lccc71/pmw/lib/pmw_logcat;->a(Lccc71/pmw/lib/pmw_logcat;Z)V

    .line 665
    iget-object v0, p0, Lccc71/pmw/lib/gw;->a:Lccc71/pmw/lib/gr;

    iget-object v0, v0, Lccc71/pmw/lib/gr;->a:Lccc71/pmw/lib/pmw_logcat;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_logcat;->d(Lccc71/pmw/lib/pmw_logcat;)V

    .line 666
    return-void

    .line 654
    :catch_0
    move-exception v0

    .line 656
    const-string v1, "android_tuner"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to clear logcat screen: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
