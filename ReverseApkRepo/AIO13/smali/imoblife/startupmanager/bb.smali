.class final Limoblife/startupmanager/bb;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Limoblife/startupmanager/ZCustomizeActivity$ViewItem;

.field private final synthetic b:I

.field private final synthetic c:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Limoblife/startupmanager/ZCustomizeActivity$ViewItem;ILandroid/widget/CheckBox;)V
    .locals 0

    iput-object p1, p0, Limoblife/startupmanager/bb;->a:Limoblife/startupmanager/ZCustomizeActivity$ViewItem;

    iput p2, p0, Limoblife/startupmanager/bb;->b:I

    iput-object p3, p0, Limoblife/startupmanager/bb;->c:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Limoblife/startupmanager/bb;->a:Limoblife/startupmanager/ZCustomizeActivity$ViewItem;

    iget-object v0, v0, Limoblife/startupmanager/ZCustomizeActivity$ViewItem;->scr:Ljava/util/List;

    iget v1, p0, Limoblife/startupmanager/bb;->b:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Limoblife/startupmanager/au;

    iget-object v1, p0, Limoblife/startupmanager/bb;->c:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    iput-boolean v1, v0, Limoblife/startupmanager/au;->d:Z

    iget-object v0, p0, Limoblife/startupmanager/bb;->c:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Limoblife/startupmanager/bb;->a:Limoblife/startupmanager/ZCustomizeActivity$ViewItem;

    #getter for: Limoblife/startupmanager/ZCustomizeActivity$ViewItem;->this$0:Limoblife/startupmanager/ZCustomizeActivity;
    invoke-static {v0}, Limoblife/startupmanager/ZCustomizeActivity$ViewItem;->access$0(Limoblife/startupmanager/ZCustomizeActivity$ViewItem;)Limoblife/startupmanager/ZCustomizeActivity;

    move-result-object v1

    iget-object v0, p0, Limoblife/startupmanager/bb;->a:Limoblife/startupmanager/ZCustomizeActivity$ViewItem;

    iget-object v0, v0, Limoblife/startupmanager/ZCustomizeActivity$ViewItem;->scr:Ljava/util/List;

    iget v2, p0, Limoblife/startupmanager/bb;->b:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Limoblife/startupmanager/au;

    iget-object v0, v0, Limoblife/startupmanager/au;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Limoblife/startupmanager/ZCustomizeActivity;->saveCustomizeList(Ljava/lang/String;)V

    iget-object v0, p0, Limoblife/startupmanager/bb;->c:Landroid/widget/CheckBox;

    sget v1, Limoblife/startupmanager/R$drawable;->checkbox_on:I

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setButtonDrawable(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Limoblife/startupmanager/bb;->a:Limoblife/startupmanager/ZCustomizeActivity$ViewItem;

    #getter for: Limoblife/startupmanager/ZCustomizeActivity$ViewItem;->this$0:Limoblife/startupmanager/ZCustomizeActivity;
    invoke-static {v0}, Limoblife/startupmanager/ZCustomizeActivity$ViewItem;->access$0(Limoblife/startupmanager/ZCustomizeActivity$ViewItem;)Limoblife/startupmanager/ZCustomizeActivity;

    move-result-object v1

    iget-object v0, p0, Limoblife/startupmanager/bb;->a:Limoblife/startupmanager/ZCustomizeActivity$ViewItem;

    iget-object v0, v0, Limoblife/startupmanager/ZCustomizeActivity$ViewItem;->scr:Ljava/util/List;

    iget v2, p0, Limoblife/startupmanager/bb;->b:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Limoblife/startupmanager/au;

    iget-object v0, v0, Limoblife/startupmanager/au;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Limoblife/startupmanager/ZCustomizeActivity;->deleteCustomizeList(Ljava/lang/String;)V

    iget-object v0, p0, Limoblife/startupmanager/bb;->c:Landroid/widget/CheckBox;

    sget v1, Limoblife/startupmanager/R$drawable;->checkbox_off:I

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setButtonDrawable(I)V

    goto :goto_0
.end method
