.class final Lccc71/bmw/lib/df;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lccc71/bmw/lib/bmw_status;


# direct methods
.method constructor <init>(Lccc71/bmw/lib/bmw_status;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/bmw/lib/df;->a:Lccc71/bmw/lib/bmw_status;

    .line 1310
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1313
    iget-object v0, p0, Lccc71/bmw/lib/df;->a:Lccc71/bmw/lib/bmw_status;

    check-cast p1, Lccc71/utils/ccc71_graph_view;

    invoke-static {v0, p1}, Lccc71/bmw/lib/bmw_status;->a(Lccc71/bmw/lib/bmw_status;Lccc71/utils/ccc71_graph_view;)V

    .line 1314
    const/4 v0, 0x0

    return v0
.end method
