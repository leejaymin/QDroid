.class final Limoblife/startupmanager/aw;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Limoblife/startupmanager/av;

.field private final synthetic b:I

.field private final synthetic c:Limoblife/startupmanager/ba;


# direct methods
.method constructor <init>(Limoblife/startupmanager/av;ILimoblife/startupmanager/ba;)V
    .locals 0

    iput-object p1, p0, Limoblife/startupmanager/aw;->a:Limoblife/startupmanager/av;

    iput p2, p0, Limoblife/startupmanager/aw;->b:I

    iput-object p3, p0, Limoblife/startupmanager/aw;->c:Limoblife/startupmanager/ba;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Limoblife/startupmanager/aw;->a:Limoblife/startupmanager/av;

    invoke-static {v0}, Limoblife/startupmanager/av;->a(Limoblife/startupmanager/av;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Limoblife/startupmanager/aw;->b:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Limoblife/startupmanager/au;

    iget-object v1, p0, Limoblife/startupmanager/aw;->c:Limoblife/startupmanager/ba;

    iget-object v1, v1, Limoblife/startupmanager/ba;->c:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    iput-boolean v1, v0, Limoblife/startupmanager/au;->d:Z

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Limoblife/startupmanager/aw;->a:Limoblife/startupmanager/av;

    invoke-static {v0}, Limoblife/startupmanager/av;->a(Limoblife/startupmanager/av;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Limoblife/startupmanager/aw;->a:Limoblife/startupmanager/av;

    invoke-static {v0}, Limoblife/startupmanager/av;->a(Limoblife/startupmanager/av;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Limoblife/startupmanager/au;

    iget-boolean v0, v0, Limoblife/startupmanager/au;->d:Z

    if-eqz v0, :cond_1

    sget-object v0, Limoblife/startupmanager/MyActivity;->deleteItem:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    sget-object v0, Limoblife/startupmanager/MyActivity;->deleteItem:Landroid/widget/Button;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_1

    :cond_1
    sget-object v0, Limoblife/startupmanager/MyActivity;->deleteItem:Landroid/widget/Button;

    const v2, -0x9a9a9b

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextColor(I)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method
