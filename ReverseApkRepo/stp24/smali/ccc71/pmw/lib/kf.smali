.class final Lccc71/pmw/lib/kf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lccc71/pmw/lib/ke;

.field private final synthetic b:Landroid/widget/ScrollView;

.field private final synthetic c:I


# direct methods
.method constructor <init>(Lccc71/pmw/lib/ke;Landroid/widget/ScrollView;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/kf;->a:Lccc71/pmw/lib/ke;

    iput-object p2, p0, Lccc71/pmw/lib/kf;->b:Landroid/widget/ScrollView;

    iput p3, p0, Lccc71/pmw/lib/kf;->c:I

    .line 1447
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 1452
    iget-object v0, p0, Lccc71/pmw/lib/kf;->b:Landroid/widget/ScrollView;

    const/4 v1, 0x0

    iget v2, p0, Lccc71/pmw/lib/kf;->c:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 1453
    const-string v0, "process_monitor_widget"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Resulting scroll="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lccc71/pmw/lib/kf;->b:Landroid/widget/ScrollView;

    invoke-virtual {v2}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1454
    return-void
.end method
