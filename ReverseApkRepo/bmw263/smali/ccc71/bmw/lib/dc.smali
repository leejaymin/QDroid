.class final Lccc71/bmw/lib/dc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lccc71/bmw/lib/bmw_status;


# direct methods
.method constructor <init>(Lccc71/bmw/lib/bmw_status;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/bmw/lib/dc;->a:Lccc71/bmw/lib/bmw_status;

    .line 1060
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 1064
    iget-object v0, p0, Lccc71/bmw/lib/dc;->a:Lccc71/bmw/lib/bmw_status;

    invoke-virtual {v0, p1}, Lccc71/bmw/lib/bmw_status;->registerForContextMenu(Landroid/view/View;)V

    .line 1065
    iget-object v0, p0, Lccc71/bmw/lib/dc;->a:Lccc71/bmw/lib/bmw_status;

    invoke-virtual {v0, p1}, Lccc71/bmw/lib/bmw_status;->openContextMenu(Landroid/view/View;)V

    .line 1066
    return-void
.end method
