.class final Lccc71/pmw/lib/op;
.super Lccc71/utils/android/a;
.source "SourceFile"


# instance fields
.field final synthetic a:Lccc71/pmw/lib/pmw_sysctl;

.field private final synthetic b:Lccc71/pmw/lib/pb;

.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:Landroid/view/View;

.field private final synthetic g:Landroid/widget/TextView;

.field private final synthetic h:Landroid/widget/TextView;

.field private final synthetic i:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/pmw_sysctl;Lccc71/pmw/lib/pb;Ljava/lang/String;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/op;->a:Lccc71/pmw/lib/pmw_sysctl;

    iput-object p2, p0, Lccc71/pmw/lib/op;->b:Lccc71/pmw/lib/pb;

    iput-object p3, p0, Lccc71/pmw/lib/op;->c:Ljava/lang/String;

    iput-object p4, p0, Lccc71/pmw/lib/op;->d:Landroid/view/View;

    iput-object p5, p0, Lccc71/pmw/lib/op;->g:Landroid/widget/TextView;

    iput-object p6, p0, Lccc71/pmw/lib/op;->h:Landroid/widget/TextView;

    iput-object p7, p0, Lccc71/pmw/lib/op;->i:Landroid/widget/ImageView;

    .line 1099
    invoke-direct {p0}, Lccc71/utils/android/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected final varargs synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 1
    iget-object v0, p0, Lccc71/pmw/lib/op;->a:Lccc71/pmw/lib/pmw_sysctl;

    const-string v1, "sysctl"

    invoke-static {v0, v1}, Lccc71/pmw/b/h;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lccc71/pmw/b/h;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " -w "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lccc71/pmw/lib/op;->b:Lccc71/pmw/lib/pb;

    iget-object v4, v4, Lccc71/pmw/lib/pb;->a:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lccc71/pmw/lib/op;->b:Lccc71/pmw/lib/pb;

    iget-object v4, v4, Lccc71/pmw/lib/pb;->c:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v4, v2

    move v6, v3

    invoke-direct/range {v0 .. v6}, Lccc71/pmw/b/h;-><init>(Ljava/lang/String;Landroid/os/Handler;ZLjava/lang/Object;ZZ)V

    invoke-virtual {v0}, Lccc71/pmw/b/h;->b()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_1

    new-array v0, v5, [Ljava/lang/Void;

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/op;->d([Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v4, 0x2

    if-eq v1, v4, :cond_2

    new-array v0, v5, [Ljava/lang/Void;

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/op;->d([Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    aget-object v0, v0, v3

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lccc71/pmw/lib/op;->b:Lccc71/pmw/lib/pb;

    iget-object v1, v1, Lccc71/pmw/lib/pb;->c:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "process_monitor_widget"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "different values: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lccc71/pmw/lib/op;->b:Lccc71/pmw/lib/pb;

    iget-object v4, v4, Lccc71/pmw/lib/pb;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " != "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array v0, v5, [Ljava/lang/Void;

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/op;->d([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected final varargs synthetic b([Ljava/lang/Object;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    const v2, -0x333334

    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-super {p0, p1}, Lccc71/utils/android/a;->b([Ljava/lang/Object;)V

    iget-object v0, p0, Lccc71/pmw/lib/op;->a:Lccc71/pmw/lib/pmw_sysctl;

    sget v1, Lccc71/pmw/lib/g;->dK:I

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lccc71/pmw/lib/op;->b:Lccc71/pmw/lib/pb;

    iget-object v1, p0, Lccc71/pmw/lib/op;->c:Ljava/lang/String;

    iput-object v1, v0, Lccc71/pmw/lib/pb;->c:Ljava/lang/String;

    iget-object v0, p0, Lccc71/pmw/lib/op;->a:Lccc71/pmw/lib/pmw_sysctl;

    iget-object v1, p0, Lccc71/pmw/lib/op;->b:Lccc71/pmw/lib/pb;

    iget-object v1, v1, Lccc71/pmw/lib/pb;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lccc71/pmw/lib/pmw_sysctl;->a(Lccc71/pmw/lib/pmw_sysctl;Ljava/lang/String;)V

    iget-object v0, p0, Lccc71/pmw/lib/op;->d:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lccc71/pmw/lib/op;->c:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lccc71/pmw/lib/op;->b:Lccc71/pmw/lib/pb;

    iget-object v0, v0, Lccc71/pmw/lib/pb;->c:Ljava/lang/String;

    iget-object v1, p0, Lccc71/pmw/lib/op;->b:Lccc71/pmw/lib/pb;

    iget-object v1, v1, Lccc71/pmw/lib/pb;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lccc71/pmw/lib/op;->g:Landroid/widget/TextView;

    iget-object v1, p0, Lccc71/pmw/lib/op;->g:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getId()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V

    iget-object v0, p0, Lccc71/pmw/lib/op;->g:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getId()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lccc71/pmw/lib/op;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    iget-object v0, p0, Lccc71/pmw/lib/op;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lccc71/pmw/lib/op;->i:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lccc71/pmw/lib/op;->a:Lccc71/pmw/lib/pmw_sysctl;

    iget-object v1, p0, Lccc71/pmw/lib/op;->b:Lccc71/pmw/lib/pb;

    iget-object v1, v1, Lccc71/pmw/lib/pb;->a:Ljava/lang/String;

    iget-object v2, p0, Lccc71/pmw/lib/op;->b:Lccc71/pmw/lib/pb;

    iget-object v2, v2, Lccc71/pmw/lib/pb;->d:Ljava/lang/String;

    iget-object v3, p0, Lccc71/pmw/lib/op;->b:Lccc71/pmw/lib/pb;

    iget-object v3, v3, Lccc71/pmw/lib/pb;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lccc71/pmw/lib/pmw_sysctl;->a(Lccc71/pmw/lib/pmw_sysctl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lccc71/pmw/lib/op;->g:Landroid/widget/TextView;

    iget-object v1, p0, Lccc71/pmw/lib/op;->g:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getId()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V

    iget-object v0, p0, Lccc71/pmw/lib/op;->g:Landroid/widget/TextView;

    invoke-static {}, Lccc71/pmw/lib/pmw_sysctl;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lccc71/pmw/lib/op;->h:Landroid/widget/TextView;

    invoke-static {}, Lccc71/pmw/lib/pmw_sysctl;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lccc71/pmw/lib/op;->i:Landroid/widget/ImageView;

    sget v1, Lccc71/pmw/lib/c;->n:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method
