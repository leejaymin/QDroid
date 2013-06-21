.class final Limoblife/startupmanager/ah;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Limoblife/startupmanager/SystemListActivity;


# direct methods
.method constructor <init>(Limoblife/startupmanager/SystemListActivity;)V
    .locals 0

    iput-object p1, p0, Limoblife/startupmanager/ah;->a:Limoblife/startupmanager/SystemListActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Limoblife/startupmanager/ah;->a:Limoblife/startupmanager/SystemListActivity;

    iget-object v0, v0, Limoblife/startupmanager/SystemListActivity;->listViewItem:Limoblife/startupmanager/ListViewItem;

    invoke-virtual {v0}, Limoblife/startupmanager/ListViewItem;->notifyDataSetChanged()V

    iget-object v0, p0, Limoblife/startupmanager/ah;->a:Limoblife/startupmanager/SystemListActivity;

    iget-object v0, v0, Limoblife/startupmanager/SystemListActivity;->system:Ljava/util/List;

    iget-object v1, p0, Limoblife/startupmanager/ah;->a:Limoblife/startupmanager/SystemListActivity;

    iget-object v1, v1, Limoblife/startupmanager/SystemListActivity;->comparator:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v0, p0, Limoblife/startupmanager/ah;->a:Limoblife/startupmanager/SystemListActivity;

    iget-object v0, v0, Limoblife/startupmanager/SystemListActivity;->listViewItem:Limoblife/startupmanager/ListViewItem;

    sget-object v1, Limoblife/startupmanager/MyActivity;->checkBox1:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Limoblife/startupmanager/ListViewItem;->setSize(Z)V

    iget-object v0, p0, Limoblife/startupmanager/ah;->a:Limoblife/startupmanager/SystemListActivity;

    #getter for: Limoblife/startupmanager/SystemListActivity;->syslist:Landroid/widget/ListView;
    invoke-static {v0}, Limoblife/startupmanager/SystemListActivity;->access$0(Limoblife/startupmanager/SystemListActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Limoblife/startupmanager/ah;->a:Limoblife/startupmanager/SystemListActivity;

    iget-object v1, v1, Limoblife/startupmanager/SystemListActivity;->listViewItem:Limoblife/startupmanager/ListViewItem;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Limoblife/startupmanager/ah;->a:Limoblife/startupmanager/SystemListActivity;

    iget-object v0, v0, Limoblife/startupmanager/SystemListActivity;->listViewItem:Limoblife/startupmanager/ListViewItem;

    invoke-virtual {v0}, Limoblife/startupmanager/ListViewItem;->notifyDataSetChanged()V

    iget-object v0, p0, Limoblife/startupmanager/ah;->a:Limoblife/startupmanager/SystemListActivity;

    #getter for: Limoblife/startupmanager/SystemListActivity;->syslist:Landroid/widget/ListView;
    invoke-static {v0}, Limoblife/startupmanager/SystemListActivity;->access$0(Limoblife/startupmanager/SystemListActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Limoblife/startupmanager/ah;->a:Limoblife/startupmanager/SystemListActivity;

    iget-object v1, v1, Limoblife/startupmanager/SystemListActivity;->listViewItem:Limoblife/startupmanager/ListViewItem;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
