.class final Lccc71/utils/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field final synthetic a:Lccc71/utils/y;

.field private final synthetic b:J


# direct methods
.method constructor <init>(Lccc71/utils/y;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/utils/z;->a:Lccc71/utils/y;

    iput-wide p2, p0, Lccc71/utils/z;->b:J

    .line 444
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 3
    .parameter

    .prologue
    .line 449
    iget-object v0, p0, Lccc71/utils/z;->a:Lccc71/utils/y;

    invoke-static {v0}, Lccc71/utils/y;->a(Lccc71/utils/y;)Lccc71/utils/ccc71_list_view;

    move-result-object v0

    invoke-static {v0}, Lccc71/utils/ccc71_list_view;->d(Lccc71/utils/ccc71_list_view;)Lccc71/utils/ak;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 451
    iget-object v0, p0, Lccc71/utils/z;->a:Lccc71/utils/y;

    invoke-static {v0}, Lccc71/utils/y;->a(Lccc71/utils/y;)Lccc71/utils/ccc71_list_view;

    move-result-object v0

    invoke-static {v0}, Lccc71/utils/ccc71_list_view;->d(Lccc71/utils/ccc71_list_view;)Lccc71/utils/ak;

    move-result-object v0

    iget-wide v1, p0, Lccc71/utils/z;->b:J

    invoke-interface {v0, p1, v1, v2}, Lccc71/utils/ak;->a(Landroid/view/View;J)V

    .line 454
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
