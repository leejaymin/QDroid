.class final Limoblife/startupmanager/ax;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field final synthetic a:Limoblife/startupmanager/av;

.field private final synthetic b:I


# direct methods
.method constructor <init>(Limoblife/startupmanager/av;I)V
    .locals 0

    iput-object p1, p0, Limoblife/startupmanager/ax;->a:Limoblife/startupmanager/av;

    iput p2, p0, Limoblife/startupmanager/ax;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Limoblife/startupmanager/ax;)Limoblife/startupmanager/av;
    .locals 1

    iget-object v0, p0, Limoblife/startupmanager/ax;->a:Limoblife/startupmanager/av;

    return-object v0
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 8

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "KEY1"

    sget v2, Limoblife/startupmanager/R$drawable;->remove:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "KEY2"

    iget-object v2, p0, Limoblife/startupmanager/ax;->a:Limoblife/startupmanager/av;

    invoke-static {v2}, Limoblife/startupmanager/av;->b(Limoblife/startupmanager/av;)Limoblife/startupmanager/ZCustomizeActivity;

    move-result-object v2

    sget v4, Limoblife/startupmanager/R$string;->za_remove:I

    invoke-virtual {v2, v4}, Limoblife/startupmanager/ZCustomizeActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "KEY1"

    sget v2, Limoblife/startupmanager/R$drawable;->info:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "KEY2"

    iget-object v2, p0, Limoblife/startupmanager/ax;->a:Limoblife/startupmanager/av;

    invoke-static {v2}, Limoblife/startupmanager/av;->b(Limoblife/startupmanager/av;)Limoblife/startupmanager/ZCustomizeActivity;

    move-result-object v2

    sget v4, Limoblife/startupmanager/R$string;->za_applicationInfo:I

    invoke-virtual {v2, v4}, Limoblife/startupmanager/ZCustomizeActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "KEY1"

    sget v2, Limoblife/startupmanager/R$drawable;->switchto:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "KEY2"

    iget-object v2, p0, Limoblife/startupmanager/ax;->a:Limoblife/startupmanager/av;

    invoke-static {v2}, Limoblife/startupmanager/av;->b(Limoblife/startupmanager/av;)Limoblife/startupmanager/ZCustomizeActivity;

    move-result-object v2

    sget v4, Limoblife/startupmanager/R$string;->za_switchto:I

    invoke-virtual {v2, v4}, Limoblife/startupmanager/ZCustomizeActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "KEY1"

    sget v2, Limoblife/startupmanager/R$drawable;->market:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "KEY2"

    iget-object v2, p0, Limoblife/startupmanager/ax;->a:Limoblife/startupmanager/av;

    invoke-static {v2}, Limoblife/startupmanager/av;->b(Limoblife/startupmanager/av;)Limoblife/startupmanager/ZCustomizeActivity;

    move-result-object v2

    sget v4, Limoblife/startupmanager/R$string;->za_findinMarket:I

    invoke-virtual {v2, v4}, Limoblife/startupmanager/ZCustomizeActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Limoblife/startupmanager/ax;->a:Limoblife/startupmanager/av;

    invoke-static {v1}, Limoblife/startupmanager/av;->b(Limoblife/startupmanager/av;)Limoblife/startupmanager/ZCustomizeActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Limoblife/startupmanager/R$string;->pleaseSelect:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Limoblife/startupmanager/R$drawable;->dialogicon:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    new-instance v0, Limoblife/startupmanager/ay;

    iget-object v1, p0, Limoblife/startupmanager/ax;->a:Limoblife/startupmanager/av;

    invoke-static {v1}, Limoblife/startupmanager/av;->b(Limoblife/startupmanager/av;)Limoblife/startupmanager/ZCustomizeActivity;

    move-result-object v2

    sget v4, Limoblife/startupmanager/R$layout;->linklist_item:I

    iget-object v1, p0, Limoblife/startupmanager/ax;->a:Limoblife/startupmanager/av;

    invoke-static {v1}, Limoblife/startupmanager/av;->b(Limoblife/startupmanager/av;)Limoblife/startupmanager/ZCustomizeActivity;

    move-result-object v1

    #getter for: Limoblife/startupmanager/ZCustomizeActivity;->FORM:[Ljava/lang/String;
    invoke-static {v1}, Limoblife/startupmanager/ZCustomizeActivity;->access$2(Limoblife/startupmanager/ZCustomizeActivity;)[Ljava/lang/String;

    move-result-object v5

    iget-object v1, p0, Limoblife/startupmanager/ax;->a:Limoblife/startupmanager/av;

    invoke-static {v1}, Limoblife/startupmanager/av;->b(Limoblife/startupmanager/av;)Limoblife/startupmanager/ZCustomizeActivity;

    move-result-object v1

    #getter for: Limoblife/startupmanager/ZCustomizeActivity;->TO:[I
    invoke-static {v1}, Limoblife/startupmanager/ZCustomizeActivity;->access$3(Limoblife/startupmanager/ZCustomizeActivity;)[I

    move-result-object v6

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Limoblife/startupmanager/ay;-><init>(Limoblife/startupmanager/ax;Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    new-instance v1, Limoblife/startupmanager/az;

    iget v2, p0, Limoblife/startupmanager/ax;->b:I

    invoke-direct {v1, p0, v2}, Limoblife/startupmanager/az;-><init>(Limoblife/startupmanager/ax;I)V

    invoke-virtual {v7, v0, v1}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    const/4 v0, 0x0

    return v0
.end method
