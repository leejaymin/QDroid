.class final Limoblife/startupmanager/am;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Limoblife/startupmanager/ZCustomizeActivity;


# direct methods
.method constructor <init>(Limoblife/startupmanager/ZCustomizeActivity;)V
    .locals 0

    iput-object p1, p0, Limoblife/startupmanager/am;->a:Limoblife/startupmanager/ZCustomizeActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method static synthetic a(Limoblife/startupmanager/am;)Limoblife/startupmanager/ZCustomizeActivity;
    .locals 1

    iget-object v0, p0, Limoblife/startupmanager/am;->a:Limoblife/startupmanager/ZCustomizeActivity;

    return-object v0
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 8

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "KEY1"

    sget v2, Limoblife/startupmanager/R$drawable;->user:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "KEY2"

    iget-object v2, p0, Limoblife/startupmanager/am;->a:Limoblife/startupmanager/ZCustomizeActivity;

    sget v4, Limoblife/startupmanager/R$string;->za_userItems:I

    invoke-virtual {v2, v4}, Limoblife/startupmanager/ZCustomizeActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "KEY1"

    sget v2, Limoblife/startupmanager/R$drawable;->system:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "KEY2"

    iget-object v2, p0, Limoblife/startupmanager/am;->a:Limoblife/startupmanager/ZCustomizeActivity;

    sget v4, Limoblife/startupmanager/R$string;->za_systemItems:I

    invoke-virtual {v2, v4}, Limoblife/startupmanager/ZCustomizeActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Limoblife/startupmanager/am;->a:Limoblife/startupmanager/ZCustomizeActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Limoblife/startupmanager/am;->a:Limoblife/startupmanager/ZCustomizeActivity;

    sget v2, Limoblife/startupmanager/R$string;->customize_addItem:I

    invoke-virtual {v1, v2}, Limoblife/startupmanager/ZCustomizeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Limoblife/startupmanager/R$drawable;->dialogicon:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    new-instance v0, Limoblife/startupmanager/an;

    iget-object v2, p0, Limoblife/startupmanager/am;->a:Limoblife/startupmanager/ZCustomizeActivity;

    sget v4, Limoblife/startupmanager/R$layout;->linklist_item:I

    iget-object v1, p0, Limoblife/startupmanager/am;->a:Limoblife/startupmanager/ZCustomizeActivity;

    #getter for: Limoblife/startupmanager/ZCustomizeActivity;->FORM:[Ljava/lang/String;
    invoke-static {v1}, Limoblife/startupmanager/ZCustomizeActivity;->access$2(Limoblife/startupmanager/ZCustomizeActivity;)[Ljava/lang/String;

    move-result-object v5

    iget-object v1, p0, Limoblife/startupmanager/am;->a:Limoblife/startupmanager/ZCustomizeActivity;

    #getter for: Limoblife/startupmanager/ZCustomizeActivity;->TO:[I
    invoke-static {v1}, Limoblife/startupmanager/ZCustomizeActivity;->access$3(Limoblife/startupmanager/ZCustomizeActivity;)[I

    move-result-object v6

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Limoblife/startupmanager/an;-><init>(Limoblife/startupmanager/am;Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    new-instance v1, Limoblife/startupmanager/ao;

    invoke-direct {v1, p0}, Limoblife/startupmanager/ao;-><init>(Limoblife/startupmanager/am;)V

    invoke-virtual {v7, v0, v1}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    iget-object v0, p0, Limoblife/startupmanager/am;->a:Limoblife/startupmanager/ZCustomizeActivity;

    iget-object v0, v0, Limoblife/startupmanager/ZCustomizeActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    goto/16 :goto_0

    :pswitch_1
    iget-object v0, p0, Limoblife/startupmanager/am;->a:Limoblife/startupmanager/ZCustomizeActivity;

    invoke-virtual {v0}, Limoblife/startupmanager/ZCustomizeActivity;->iniList()V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
