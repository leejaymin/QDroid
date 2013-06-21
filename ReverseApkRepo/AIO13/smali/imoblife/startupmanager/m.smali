.class final Limoblife/startupmanager/m;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Limoblife/startupmanager/MyActivity;


# direct methods
.method constructor <init>(Limoblife/startupmanager/MyActivity;)V
    .locals 0

    iput-object p1, p0, Limoblife/startupmanager/m;->a:Limoblife/startupmanager/MyActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 8

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Limoblife/startupmanager/m;->a:Limoblife/startupmanager/MyActivity;

    iget-object v0, v0, Limoblife/startupmanager/MyActivity;->optionView:Limoblife/startupmanager/j;

    iget-object v0, v0, Limoblife/startupmanager/j;->a:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    new-instance v3, Limoblife/startupmanager/ManagerDBUtil;

    iget-object v4, p0, Limoblife/startupmanager/m;->a:Limoblife/startupmanager/MyActivity;

    iget-object v5, p0, Limoblife/startupmanager/m;->a:Limoblife/startupmanager/MyActivity;

    iget-object v5, v5, Limoblife/startupmanager/MyActivity;->optionView:Limoblife/startupmanager/j;

    invoke-direct {v3, v4, v5, v0}, Limoblife/startupmanager/ManagerDBUtil;-><init>(Landroid/app/Activity;Limoblife/startupmanager/j;Ljava/lang/String;)V

    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    :goto_0
    iget-object v0, p0, Limoblife/startupmanager/m;->a:Limoblife/startupmanager/MyActivity;

    #getter for: Limoblife/startupmanager/MyActivity;->_list_mode:I
    invoke-static {v0}, Limoblife/startupmanager/MyActivity;->access$1(Limoblife/startupmanager/MyActivity;)I

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "handler: _list_mode == LIST_MODE_USER_APP"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Limoblife/startupmanager/m;->a:Limoblife/startupmanager/MyActivity;

    #getter for: Limoblife/startupmanager/MyActivity;->listViewItem:[Limoblife/startupmanager/ListViewItem;
    invoke-static {v0}, Limoblife/startupmanager/MyActivity;->access$2(Limoblife/startupmanager/MyActivity;)[Limoblife/startupmanager/ListViewItem;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Limoblife/startupmanager/ListViewItem;->notifyDataSetChanged()V

    :goto_1
    return-void

    :pswitch_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "handler: message.what = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Limoblife/startupmanager/m;->a:Limoblife/startupmanager/MyActivity;

    iget-object v4, v4, Limoblife/startupmanager/MyActivity;->optionView:Limoblife/startupmanager/j;

    iget-boolean v4, v4, Limoblife/startupmanager/j;->b:Z

    sget-object v5, Limoblife/startupmanager/MyActivity;->packageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v5}, Limoblife/startupmanager/ManagerDBUtil;->initSQLiteDB(Landroid/content/pm/PackageManager;)V

    if-nez v4, :cond_1

    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Limoblife/startupmanager/m;->a:Limoblife/startupmanager/MyActivity;

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v5, Limoblife/startupmanager/R$string;->startup_dialog_remove:I

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    sget v5, Limoblife/startupmanager/R$string;->startup_dialog_title:I

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    iget-object v5, p0, Limoblife/startupmanager/m;->a:Limoblife/startupmanager/MyActivity;

    sget v6, Limoblife/startupmanager/R$string;->startup_dialog_ok:I

    invoke-virtual {v5, v6}, Limoblife/startupmanager/MyActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Limoblife/startupmanager/n;

    invoke-direct {v6, p0}, Limoblife/startupmanager/n;-><init>(Limoblife/startupmanager/m;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    iget-object v4, v3, Limoblife/startupmanager/ManagerDBUtil;->cursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_0

    iget-object v4, v3, Limoblife/startupmanager/ManagerDBUtil;->sqliteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "delete from KILLLIST where packageName=\'"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "\'"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_0
    :goto_2
    iget-object v0, v3, Limoblife/startupmanager/ManagerDBUtil;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    iget-object v0, v3, Limoblife/startupmanager/ManagerDBUtil;->sqliteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto/16 :goto_0

    :cond_1
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string v6, "packageName"

    invoke-virtual {v5, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "name"

    iget-object v6, p0, Limoblife/startupmanager/m;->a:Limoblife/startupmanager/MyActivity;

    iget-object v6, v6, Limoblife/startupmanager/MyActivity;->optionView:Limoblife/startupmanager/j;

    iget-object v6, v6, Limoblife/startupmanager/j;->a:Landroid/content/pm/ApplicationInfo;

    sget-object v7, Limoblife/startupmanager/MyActivity;->packageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v6, v7}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v3, Limoblife/startupmanager/ManagerDBUtil;->sqliteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "KILLLIST"

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7, v5}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Limoblife/startupmanager/m;->a:Limoblife/startupmanager/MyActivity;

    invoke-direct {v0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v5, Limoblife/startupmanager/R$string;->startup_dialog_remove:I

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v5, Limoblife/startupmanager/R$string;->startup_dialog_title:I

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v5, p0, Limoblife/startupmanager/m;->a:Limoblife/startupmanager/MyActivity;

    sget v6, Limoblife/startupmanager/R$string;->buttonName:I

    invoke-virtual {v5, v6}, Limoblife/startupmanager/MyActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Limoblife/startupmanager/o;

    invoke-direct {v6, p0}, Limoblife/startupmanager/o;-><init>(Limoblife/startupmanager/m;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    iget-object v0, p0, Limoblife/startupmanager/m;->a:Limoblife/startupmanager/MyActivity;

    iget-object v5, v0, Limoblife/startupmanager/MyActivity;->optionView:Limoblife/startupmanager/j;

    if-eqz v4, :cond_2

    move v0, v1

    :goto_3
    iput-boolean v0, v5, Limoblife/startupmanager/j;->b:Z

    goto :goto_2

    :cond_2
    move v0, v2

    goto :goto_3

    :pswitch_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "handler: message.what = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Limoblife/startupmanager/m;->a:Limoblife/startupmanager/MyActivity;

    #calls: Limoblife/startupmanager/MyActivity;->updateSystemList()V
    invoke-static {v0}, Limoblife/startupmanager/MyActivity;->access$0(Limoblife/startupmanager/MyActivity;)V

    goto/16 :goto_0

    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "handler: _list_mode == LIST_MODE_SYSTEM_APP"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Limoblife/startupmanager/m;->a:Limoblife/startupmanager/MyActivity;

    #getter for: Limoblife/startupmanager/MyActivity;->listViewItem:[Limoblife/startupmanager/ListViewItem;
    invoke-static {v0}, Limoblife/startupmanager/MyActivity;->access$2(Limoblife/startupmanager/MyActivity;)[Limoblife/startupmanager/ListViewItem;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {v0}, Limoblife/startupmanager/ListViewItem;->notifyDataSetChanged()V

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
