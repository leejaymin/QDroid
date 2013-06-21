.class final Lccc71/pmw/lib/gp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field final synthetic a:Lccc71/pmw/lib/pmw_logcat;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/pmw_logcat;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/gp;->a:Lccc71/pmw/lib/pmw_logcat;

    .line 1327
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 3
    .parameter

    .prologue
    .line 1332
    invoke-static {}, Lccc71/utils/android/y;->a()Lccc71/utils/android/y;

    move-result-object v0

    iget-object v1, p0, Lccc71/pmw/lib/gp;->a:Lccc71/pmw/lib/pmw_logcat;

    check-cast p1, Lccc71/utils/ccc71_text_view;

    invoke-virtual {p1}, Lccc71/utils/ccc71_text_view;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lccc71/utils/android/y;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 1334
    iget-object v0, p0, Lccc71/pmw/lib/gp;->a:Lccc71/pmw/lib/pmw_logcat;

    iget-object v1, p0, Lccc71/pmw/lib/gp;->a:Lccc71/pmw/lib/pmw_logcat;

    invoke-virtual {v1}, Lccc71/pmw/lib/pmw_logcat;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lccc71/pmw/lib/g;->du:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 1335
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1337
    const/4 v0, 0x1

    return v0
.end method
