.class final Lccc71/bmw/lib/do;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lccc71/bmw/lib/dn;


# direct methods
.method constructor <init>(Lccc71/bmw/lib/dn;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/bmw/lib/do;->a:Lccc71/bmw/lib/dn;

    .line 746
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 750
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    .line 752
    iget-object v0, p0, Lccc71/bmw/lib/do;->a:Lccc71/bmw/lib/dn;

    invoke-static {v0}, Lccc71/bmw/lib/dn;->a(Lccc71/bmw/lib/dn;)Lccc71/bmw/lib/bmw_status;

    move-result-object v0

    iget-object v1, p0, Lccc71/bmw/lib/do;->a:Lccc71/bmw/lib/dn;

    invoke-static {v1}, Lccc71/bmw/lib/dn;->a(Lccc71/bmw/lib/dn;)Lccc71/bmw/lib/bmw_status;

    move-result-object v1

    sget v2, Lccc71/bmw/lib/g;->cJ:I

    invoke-virtual {v1, v2}, Lccc71/bmw/lib/bmw_status;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 753
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 760
    :goto_0
    return-void

    .line 757
    :cond_0
    iget-object v0, p0, Lccc71/bmw/lib/do;->a:Lccc71/bmw/lib/dn;

    invoke-static {v0}, Lccc71/bmw/lib/dn;->a(Lccc71/bmw/lib/dn;)Lccc71/bmw/lib/bmw_status;

    move-result-object v0

    iget-object v1, p0, Lccc71/bmw/lib/do;->a:Lccc71/bmw/lib/dn;

    invoke-static {v1}, Lccc71/bmw/lib/dn;->a(Lccc71/bmw/lib/dn;)Lccc71/bmw/lib/bmw_status;

    move-result-object v1

    sget v2, Lccc71/bmw/lib/g;->cG:I

    invoke-virtual {v1, v2}, Lccc71/bmw/lib/bmw_status;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 758
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
