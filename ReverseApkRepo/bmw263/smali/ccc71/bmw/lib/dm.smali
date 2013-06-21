.class final Lccc71/bmw/lib/dm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lccc71/bmw/lib/bmw_status;


# direct methods
.method constructor <init>(Lccc71/bmw/lib/bmw_status;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/bmw/lib/dm;->a:Lccc71/bmw/lib/bmw_status;

    .line 714
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 719
    iget-object v0, p0, Lccc71/bmw/lib/dm;->a:Lccc71/bmw/lib/bmw_status;

    invoke-static {v0}, Lccc71/bmw/lib/bi;->a(Landroid/app/Activity;)V

    .line 720
    const/4 v0, 0x1

    invoke-static {v0}, Lccc71/bmw/lib/bmw_status;->a(Z)V

    .line 721
    iget-object v0, p0, Lccc71/bmw/lib/dm;->a:Lccc71/bmw/lib/bmw_status;

    invoke-static {v0}, Lccc71/bmw/lib/bmw_status;->b(Lccc71/bmw/lib/bmw_status;)V

    .line 725
    iget-object v0, p0, Lccc71/bmw/lib/dm;->a:Lccc71/bmw/lib/bmw_status;

    .line 726
    iget-object v1, p0, Lccc71/bmw/lib/dm;->a:Lccc71/bmw/lib/bmw_status;

    invoke-virtual {v1}, Lccc71/bmw/lib/bmw_status;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 728
    sget v2, Lccc71/bmw/lib/g;->ca:I

    .line 727
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 729
    const/4 v2, 0x0

    .line 724
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 723
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 731
    return-void
.end method
