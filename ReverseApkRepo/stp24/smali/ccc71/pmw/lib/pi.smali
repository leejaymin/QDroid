.class final Lccc71/pmw/lib/pi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field final synthetic a:Lccc71/pmw/lib/pmw_terminal;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/pmw_terminal;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/pi;->a:Lccc71/pmw/lib/pmw_terminal;

    .line 364
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 369
    invoke-static {}, Lccc71/utils/android/y;->a()Lccc71/utils/android/y;

    move-result-object v0

    iget-object v1, p0, Lccc71/pmw/lib/pi;->a:Lccc71/pmw/lib/pmw_terminal;

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lccc71/utils/android/y;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 371
    iget-object v0, p0, Lccc71/pmw/lib/pi;->a:Lccc71/pmw/lib/pmw_terminal;

    iget-object v1, p0, Lccc71/pmw/lib/pi;->a:Lccc71/pmw/lib/pmw_terminal;

    invoke-virtual {v1}, Lccc71/pmw/lib/pmw_terminal;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lccc71/pmw/lib/g;->du:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 372
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 374
    return v3
.end method
