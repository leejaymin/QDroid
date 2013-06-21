.class final Lccc71/pmw/lib/fi;
.super Lccc71/utils/android/a;
.source "SourceFile"


# instance fields
.field final synthetic a:Lccc71/pmw/lib/fh;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/fh;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/fi;->a:Lccc71/pmw/lib/fh;

    .line 689
    invoke-direct {p0}, Lccc71/utils/android/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected final varargs synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 1
    new-instance v0, Lccc71/pmw/b/h;

    const-string v1, "rm /data/dalvik-cache/*"

    move-object v4, v2

    move v6, v3

    invoke-direct/range {v0 .. v6}, Lccc71/pmw/b/h;-><init>(Ljava/lang/String;Landroid/os/Handler;ZLjava/lang/Object;ZZ)V

    new-array v0, v5, [Ljava/lang/Void;

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/fi;->d([Ljava/lang/Object;)V

    return-object v2
.end method

.method protected final varargs synthetic b([Ljava/lang/Object;)V
    .locals 3
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-super {p0, p1}, Lccc71/utils/android/a;->b([Ljava/lang/Object;)V

    iget-object v0, p0, Lccc71/pmw/lib/fi;->a:Lccc71/pmw/lib/fh;

    invoke-static {v0}, Lccc71/pmw/lib/fh;->a(Lccc71/pmw/lib/fh;)Lccc71/pmw/lib/pmw_easy_apps;

    move-result-object v0

    iget-object v1, p0, Lccc71/pmw/lib/fi;->a:Lccc71/pmw/lib/fh;

    invoke-static {v1}, Lccc71/pmw/lib/fh;->a(Lccc71/pmw/lib/fh;)Lccc71/pmw/lib/pmw_easy_apps;

    move-result-object v1

    sget v2, Lccc71/pmw/lib/g;->fE:I

    invoke-virtual {v1, v2}, Lccc71/pmw/lib/pmw_easy_apps;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
