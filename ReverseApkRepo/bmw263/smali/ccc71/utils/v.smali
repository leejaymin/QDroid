.class final Lccc71/utils/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lccc71/utils/ccc71_horizontal_scroll_view;


# direct methods
.method constructor <init>(Lccc71/utils/ccc71_horizontal_scroll_view;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/utils/v;->a:Lccc71/utils/ccc71_horizontal_scroll_view;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lccc71/utils/v;->a:Lccc71/utils/ccc71_horizontal_scroll_view;

    invoke-virtual {v0}, Lccc71/utils/ccc71_horizontal_scroll_view;->requestLayout()V

    .line 73
    return-void
.end method
