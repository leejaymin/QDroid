.class Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;-><init>(Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;Landroid/content/Context;Lcom/chillingo/crystal/serverdata/UIDescription;Lcom/chillingo/crystal/form/FormModel;ILcom/chillingo/crystal/ui/theming/interfaces/ISkinnedViewDelegate;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;

.field final synthetic val$this$0:Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;


# direct methods
.method constructor <init>(Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner$4;->this$1:Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;

    iput-object p2, p0, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner$4;->val$this$0:Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner$4;->this$1:Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;

    #getter for: Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;->_tableRowClickListener:Landroid/view/View$OnClickListener;
    invoke-static {v0}, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;->access$700(Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    return-void
.end method
