.class final Lccc71/pmw/lib/ae;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lccc71/pmw/lib/pmw_analyzer;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/pmw_analyzer;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/ae;->a:Lccc71/pmw/lib/pmw_analyzer;

    .line 903
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 908
    iget-object v0, p0, Lccc71/pmw/lib/ae;->a:Lccc71/pmw/lib/pmw_analyzer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lccc71/pmw/lib/pmw_analyzer;->a(Lccc71/pmw/lib/pmw_analyzer;I)V

    .line 909
    iget-object v0, p0, Lccc71/pmw/lib/ae;->a:Lccc71/pmw/lib/pmw_analyzer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lccc71/pmw/lib/pmw_analyzer;->a(Lccc71/pmw/lib/pmw_analyzer;Landroid/widget/TextView;)V

    .line 911
    iget-object v0, p0, Lccc71/pmw/lib/ae;->a:Lccc71/pmw/lib/pmw_analyzer;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_analyzer;->o(Lccc71/pmw/lib/pmw_analyzer;)V

    .line 912
    return-void
.end method
