.class public Limoblife/startupmanager/MyActivity;
.super Landroid/app/Activity;

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final LIST_MODE_SYSTEM_APP:I = 0x1

.field public static final LIST_MODE_USER_APP:I

.field public static addItem:Landroid/widget/Button;

.field private static button:Landroid/widget/Button;

.field public static checkBox1:Landroid/widget/CheckBox;

.field public static deleteItem:Landroid/widget/Button;

.field public static myActivity:Limoblife/startupmanager/MyActivity;

.field public static packageManager:Landroid/content/pm/PackageManager;


# instance fields
.field private final FORM:[Ljava/lang/String;

.field private final TO:[I

.field private _list_mode:I

.field context:Landroid/content/Context;

.field handler:Landroid/os/Handler;

.field public intent:Landroid/content/Intent;

.field public item:Limoblife/startupmanager/k;

.field private layoutInflater:Landroid/view/LayoutInflater;

.field private listView1:Landroid/widget/ListView;

.field private listViewItem:[Limoblife/startupmanager/ListViewItem;

.field listViewItem1:Limoblife/startupmanager/ListViewItem;

.field myDialog:Landroid/app/ProgressDialog;

.field optionView:Limoblife/startupmanager/j;

.field preFocus:Z

.field private startup_subtitle:Landroid/widget/TextView;

.field private startup_system_ll:Landroid/widget/LinearLayout;

.field private startup_update_iv:Landroid/widget/ImageView;

.field private startup_user_ll:Landroid/widget/LinearLayout;

.field public system:Ljava/util/List;

.field public user:Ljava/util/List;

.field public util:Limoblife/startupmanager/ManagerUtil;


# direct methods
.method public constructor <init>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "KEY1"

    aput-object v1, v0, v2

    const-string v1, "KEY2"

    aput-object v1, v0, v3

    iput-object v0, p0, Limoblife/startupmanager/MyActivity;->FORM:[Ljava/lang/String;

    new-array v0, v4, [I

    sget v1, Limoblife/startupmanager/R$id;->linkIcon:I

    aput v1, v0, v2

    sget v1, Limoblife/startupmanager/R$id;->linkName:I

    aput v1, v0, v3

    iput-object v0, p0, Limoblife/startupmanager/MyActivity;->TO:[I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Limoblife/startupmanager/MyActivity;->system:Ljava/util/List;

    new-instance v0, Limoblife/startupmanager/ManagerUtil;

    invoke-direct {v0}, Limoblife/startupmanager/ManagerUtil;-><init>()V

    iput-object v0, p0, Limoblife/startupmanager/MyActivity;->util:Limoblife/startupmanager/ManagerUtil;

    new-instance v0, Limoblife/startupmanager/k;

    invoke-direct {v0}, Limoblife/startupmanager/k;-><init>()V

    iput-object v0, p0, Limoblife/startupmanager/MyActivity;->item:Limoblife/startupmanager/k;

    new-instance v0, Limoblife/startupmanager/m;

    invoke-direct {v0, p0}, Limoblife/startupmanager/m;-><init>(Limoblife/startupmanager/MyActivity;)V

    iput-object v0, p0, Limoblife/startupmanager/MyActivity;->handler:Landroid/os/Handler;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Limoblife/startupmanager/MyActivity;->user:Ljava/util/List;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Limoblife/startupmanager/MyActivity;->intent:Landroid/content/Intent;

    return-void
.end method

.method private InitializeMain()V
    .locals 0

    return-void
.end method

.method static synthetic access$0(Limoblife/startupmanager/MyActivity;)V
    .locals 0

    invoke-direct {p0}, Limoblife/startupmanager/MyActivity;->updateSystemList()V

    return-void
.end method

.method static synthetic access$1(Limoblife/startupmanager/MyActivity;)I
    .locals 1

    iget v0, p0, Limoblife/startupmanager/MyActivity;->_list_mode:I

    return v0
.end method

.method static synthetic access$2(Limoblife/startupmanager/MyActivity;)[Limoblife/startupmanager/ListViewItem;
    .locals 1

    iget-object v0, p0, Limoblife/startupmanager/MyActivity;->listViewItem:[Limoblife/startupmanager/ListViewItem;

    return-object v0
.end method

.method static synthetic access$3(Limoblife/startupmanager/MyActivity;)Landroid/view/LayoutInflater;
    .locals 1

    iget-object v0, p0, Limoblife/startupmanager/MyActivity;->layoutInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method private getAppInfo(Limoblife/startupmanager/w;)V
    .locals 10

    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v0, 0x4

    new-array v1, v0, [Ljava/lang/String;

    :try_start_0
    invoke-virtual {p0}, Limoblife/startupmanager/MyActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v2, p1, Limoblife/startupmanager/w;->c:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    sget v4, Limoblife/startupmanager/R$string;->za_applicationName:I

    invoke-virtual {p0, v4}, Limoblife/startupmanager/MyActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Limoblife/startupmanager/w;->b:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x0

    aget-object v3, v1, v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\n\n"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Limoblife/startupmanager/R$string;->za_processName:I

    invoke-virtual {p0, v4}, Limoblife/startupmanager/MyActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    sget v4, Limoblife/startupmanager/R$string;->main_permission:I

    invoke-virtual {p0, v4}, Limoblife/startupmanager/MyActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aget-object v3, v1, v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\n\n"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Limoblife/startupmanager/R$string;->za_sourceDirectory:I

    invoke-virtual {p0, v4}, Limoblife/startupmanager/MyActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    new-instance v3, Ljava/lang/StringBuilder;

    sget v4, Limoblife/startupmanager/R$string;->za_versionCode:I

    invoke-virtual {p0, v4}, Limoblife/startupmanager/MyActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-eqz v2, :cond_0

    const/4 v3, 0x2

    aget-object v4, v1, v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "\n"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Limoblife/startupmanager/R$string;->za_versionName:I

    invoke-virtual {p0, v5}, Limoblife/startupmanager/MyActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    :goto_0
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0}, Limoblife/startupmanager/MyActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/pm/ApplicationInfo;->loadDescription(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    const/4 v2, 0x3

    new-instance v3, Ljava/lang/StringBuilder;

    sget v4, Limoblife/startupmanager/R$string;->za_applicationDescription:I

    invoke-virtual {p0, v4}, Limoblife/startupmanager/MyActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Limoblife/startupmanager/MyActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Limoblife/startupmanager/R$layout;->alertdialog:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    sget v0, Limoblife/startupmanager/R$id;->title:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p1, Limoblife/startupmanager/w;->b:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v2, p1, Limoblife/startupmanager/w;->a:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog;->setIcon(Landroid/graphics/drawable/Drawable;)V

    new-instance v2, Ljava/lang/StringBuilder;

    aget-object v4, v1, v6

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "\n\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v4, v1, v8

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\n\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v4, v1, v7

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\n\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v1, v1, v9

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Limoblife/startupmanager/MyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Limoblife/startupmanager/R$string;->buttonName:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Limoblife/startupmanager/v;

    invoke-direct {v1, p0}, Limoblife/startupmanager/v;-><init>(Limoblife/startupmanager/MyActivity;)V

    invoke-virtual {v3, v0, v1}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    return-void

    :cond_0
    const/4 v2, 0x2

    :try_start_1
    aget-object v3, v1, v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\n"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Limoblife/startupmanager/R$string;->za_versionName:I

    invoke-virtual {p0, v4}, Limoblife/startupmanager/MyActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Limoblife/startupmanager/R$string;->unknown:I

    invoke-virtual {p0, v4}, Limoblife/startupmanager/MyActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_1

    :cond_1
    const/4 v0, 0x3

    new-instance v2, Ljava/lang/StringBuilder;

    sget v3, Limoblife/startupmanager/R$string;->za_applicationDescription:I

    invoke-virtual {p0, v3}, Limoblife/startupmanager/MyActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Limoblife/startupmanager/R$string;->unknown:I

    invoke-virtual {p0, v3}, Limoblife/startupmanager/MyActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method private getBroadcat()V
    .locals 3

    iget-object v0, p0, Limoblife/startupmanager/MyActivity;->user:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getBroadcat(): user.size() = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Limoblife/startupmanager/MyActivity;->user:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Limoblife/startupmanager/ManagerUtil;

    invoke-direct {v0}, Limoblife/startupmanager/ManagerUtil;-><init>()V

    new-instance v1, Limoblife/startupmanager/k;

    invoke-direct {v1}, Limoblife/startupmanager/k;-><init>()V

    invoke-virtual {v0}, Limoblife/startupmanager/ManagerUtil;->getBroadcast()Limoblife/startupmanager/k;

    move-result-object v1

    iget-object v2, p0, Limoblife/startupmanager/MyActivity;->user:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Limoblife/startupmanager/ManagerUtil;->getUserList(Limoblife/startupmanager/k;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Limoblife/startupmanager/MyActivity;->user:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getBroadcat(): user.size() = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Limoblife/startupmanager/MyActivity;->user:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private iniCheckBox()V
    .locals 0

    return-void
.end method

.method private init()V
    .locals 2

    sget v0, Limoblife/startupmanager/R$id;->path_tv:I

    invoke-virtual {p0, v0}, Limoblife/startupmanager/MyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Limoblife/startupmanager/R$string;->toolbox_tool_manage:I

    invoke-virtual {p0, v1}, Limoblife/startupmanager/MyActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v0, Limoblife/startupmanager/R$id;->base_titlebar_ll:I

    invoke-virtual {p0, v0}, Limoblife/startupmanager/MyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    new-instance v1, Limoblife/startupmanager/p;

    invoke-direct {v1, p0}, Limoblife/startupmanager/p;-><init>(Limoblife/startupmanager/MyActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Limoblife/startupmanager/R$id;->processList:I

    invoke-virtual {p0, v0}, Limoblife/startupmanager/MyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Limoblife/startupmanager/MyActivity;->listView1:Landroid/widget/ListView;

    const/4 v0, 0x2

    new-array v0, v0, [Limoblife/startupmanager/ListViewItem;

    iput-object v0, p0, Limoblife/startupmanager/MyActivity;->listViewItem:[Limoblife/startupmanager/ListViewItem;

    sget v0, Limoblife/startupmanager/R$id;->startup_subtitle:I

    invoke-virtual {p0, v0}, Limoblife/startupmanager/MyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Limoblife/startupmanager/MyActivity;->startup_subtitle:Landroid/widget/TextView;

    sget v0, Limoblife/startupmanager/R$id;->startup_user_ll:I

    invoke-virtual {p0, v0}, Limoblife/startupmanager/MyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Limoblife/startupmanager/MyActivity;->startup_user_ll:Landroid/widget/LinearLayout;

    iget-object v0, p0, Limoblife/startupmanager/MyActivity;->startup_user_ll:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Limoblife/startupmanager/R$id;->startup_system_ll:I

    invoke-virtual {p0, v0}, Limoblife/startupmanager/MyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Limoblife/startupmanager/MyActivity;->startup_system_ll:Landroid/widget/LinearLayout;

    iget-object v0, p0, Limoblife/startupmanager/MyActivity;->startup_system_ll:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Limoblife/startupmanager/R$id;->startup_update_iv:I

    invoke-virtual {p0, v0}, Limoblife/startupmanager/MyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Limoblife/startupmanager/MyActivity;->startup_update_iv:Landroid/widget/ImageView;

    iget-object v0, p0, Limoblife/startupmanager/MyActivity;->startup_update_iv:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private keyDown(Landroid/app/Activity;ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    invoke-virtual {p0}, Limoblife/startupmanager/MyActivity;->finish()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private refresh()V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Limoblife/startupmanager/MyActivity;->getBroadcat()V

    iget-object v0, p0, Limoblife/startupmanager/MyActivity;->listViewItem:[Limoblife/startupmanager/ListViewItem;

    new-instance v1, Limoblife/startupmanager/ListViewItem;

    iget-object v2, p0, Limoblife/startupmanager/MyActivity;->user:Ljava/util/List;

    invoke-direct {v1, p0, v2, v3}, Limoblife/startupmanager/ListViewItem;-><init>(Landroid/content/Context;Ljava/util/List;Z)V

    aput-object v1, v0, v3

    iget-object v0, p0, Limoblife/startupmanager/MyActivity;->listViewItem:[Limoblife/startupmanager/ListViewItem;

    aget-object v0, v0, v3

    sget-object v1, Limoblife/startupmanager/MyActivity;->checkBox1:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Limoblife/startupmanager/ListViewItem;->setSize(Z)V

    iget-object v0, p0, Limoblife/startupmanager/MyActivity;->listView1:Landroid/widget/ListView;

    iget-object v1, p0, Limoblife/startupmanager/MyActivity;->listViewItem:[Limoblife/startupmanager/ListViewItem;

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public static showNotification(Landroid/content/Context;)V
    .locals 9

    const/4 v8, 0x0

    const-string v0, "ob_StartupManager"

    invoke-virtual {p0, v0, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v0, "notification"

    const/4 v2, 0x1

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    new-instance v2, Landroid/app/Notification;

    sget v3, Limoblife/startupmanager/R$drawable;->icon2:I

    sget v4, Limoblife/startupmanager/R$string;->app_name:I

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    const/4 v3, 0x2

    iput v3, v2, Landroid/app/Notification;->flags:I

    new-instance v3, Landroid/content/Intent;

    const-class v4, Limoblife/startupmanager/MyActivity;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p0, v8, v3, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    sget v4, Limoblife/startupmanager/R$string;->app_name:I

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    sget v6, Limoblife/startupmanager/R$string;->rebootTime:I

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "time"

    sget v7, Limoblife/startupmanager/R$string;->initTime:I

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, p0, v4, v1, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v0, v8, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :cond_0
    return-void
.end method

.method private systemMode()V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Limoblife/startupmanager/MyActivity;->_list_mode:I

    invoke-direct {p0}, Limoblife/startupmanager/MyActivity;->updateSystemList()V

    return-void
.end method

.method private systemRefresh()V
    .locals 0

    return-void
.end method

.method private updateSystemList()V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Limoblife/startupmanager/MyActivity;->system:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Limoblife/startupmanager/MyActivity;->util:Limoblife/startupmanager/ManagerUtil;

    invoke-virtual {v0}, Limoblife/startupmanager/ManagerUtil;->getBroadcast()Limoblife/startupmanager/k;

    move-result-object v0

    iput-object v0, p0, Limoblife/startupmanager/MyActivity;->item:Limoblife/startupmanager/k;

    iget-object v0, p0, Limoblife/startupmanager/MyActivity;->util:Limoblife/startupmanager/ManagerUtil;

    iget-object v1, p0, Limoblife/startupmanager/MyActivity;->item:Limoblife/startupmanager/k;

    iget-object v2, p0, Limoblife/startupmanager/MyActivity;->system:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Limoblife/startupmanager/ManagerUtil;->getSystemList(Limoblife/startupmanager/k;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Limoblife/startupmanager/MyActivity;->system:Ljava/util/List;

    iget-object v0, p0, Limoblife/startupmanager/MyActivity;->listViewItem:[Limoblife/startupmanager/ListViewItem;

    new-instance v1, Limoblife/startupmanager/ListViewItem;

    iget-object v2, p0, Limoblife/startupmanager/MyActivity;->system:Ljava/util/List;

    invoke-direct {v1, p0, v2, v3}, Limoblife/startupmanager/ListViewItem;-><init>(Landroid/content/Context;Ljava/util/List;Z)V

    aput-object v1, v0, v3

    iget-object v0, p0, Limoblife/startupmanager/MyActivity;->listView1:Landroid/widget/ListView;

    iget-object v1, p0, Limoblife/startupmanager/MyActivity;->listViewItem:[Limoblife/startupmanager/ListViewItem;

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Limoblife/startupmanager/MyActivity;->startup_subtitle:Landroid/widget/TextView;

    sget v1, Limoblife/startupmanager/R$string;->startup_subtitle_2:I

    invoke-virtual {p0, v1}, Limoblife/startupmanager/MyActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Limoblife/startupmanager/MyActivity;->startup_user_ll:Landroid/widget/LinearLayout;

    sget v1, Limoblife/startupmanager/R$drawable;->base_tab_state_2:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    iget-object v0, p0, Limoblife/startupmanager/MyActivity;->startup_system_ll:Landroid/widget/LinearLayout;

    sget v1, Limoblife/startupmanager/R$drawable;->base_tab_state_1:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    return-void
.end method

.method private updateUserList()V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Limoblife/startupmanager/MyActivity;->getBroadcat()V

    iget-object v0, p0, Limoblife/startupmanager/MyActivity;->listViewItem:[Limoblife/startupmanager/ListViewItem;

    new-instance v1, Limoblife/startupmanager/ListViewItem;

    iget-object v2, p0, Limoblife/startupmanager/MyActivity;->user:Ljava/util/List;

    invoke-direct {v1, p0, v2, v3}, Limoblife/startupmanager/ListViewItem;-><init>(Landroid/content/Context;Ljava/util/List;Z)V

    aput-object v1, v0, v3

    iget-object v0, p0, Limoblife/startupmanager/MyActivity;->listView1:Landroid/widget/ListView;

    iget-object v1, p0, Limoblife/startupmanager/MyActivity;->listViewItem:[Limoblife/startupmanager/ListViewItem;

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Limoblife/startupmanager/MyActivity;->startup_subtitle:Landroid/widget/TextView;

    sget v1, Limoblife/startupmanager/R$string;->startup_subtitle_1:I

    invoke-virtual {p0, v1}, Limoblife/startupmanager/MyActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Limoblife/startupmanager/MyActivity;->startup_user_ll:Landroid/widget/LinearLayout;

    sget v1, Limoblife/startupmanager/R$drawable;->base_tab_state_1:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    iget-object v0, p0, Limoblife/startupmanager/MyActivity;->startup_system_ll:Landroid/widget/LinearLayout;

    sget v1, Limoblife/startupmanager/R$drawable;->base_tab_state_2:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    return-void
.end method

.method private userMode()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Limoblife/startupmanager/MyActivity;->_list_mode:I

    invoke-direct {p0}, Limoblife/startupmanager/MyActivity;->updateUserList()V

    return-void
.end method


# virtual methods
.method createView(Limoblife/startupmanager/j;Z)Landroid/view/View;
    .locals 2

    new-instance v0, Limoblife/startupmanager/w;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Limoblife/startupmanager/w;-><init>(Limoblife/startupmanager/MyActivity;B)V

    invoke-static {v0, p1}, Limoblife/startupmanager/w;->b(Limoblife/startupmanager/w;Limoblife/startupmanager/j;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Limoblife/startupmanager/MyActivity;->startup_user_ll:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Limoblife/startupmanager/MyActivity;->userMode()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Limoblife/startupmanager/MyActivity;->startup_system_ll:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Limoblife/startupmanager/MyActivity;->systemMode()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Limoblife/startupmanager/MyActivity;->startup_update_iv:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Limoblife/startupmanager/MyActivity;->_list_mode:I

    if-nez v0, :cond_3

    invoke-direct {p0}, Limoblife/startupmanager/MyActivity;->updateUserList()V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Limoblife/startupmanager/MyActivity;->updateSystemList()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Limoblife/startupmanager/MyActivity;->requestWindowFeature(I)Z

    sput-object p0, Limoblife/startupmanager/MyActivity;->myActivity:Limoblife/startupmanager/MyActivity;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Limoblife/startupmanager/MyActivity;->layoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {p0}, Limoblife/startupmanager/MyActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sput-object v0, Limoblife/startupmanager/MyActivity;->packageManager:Landroid/content/pm/PackageManager;

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    sget v0, Limoblife/startupmanager/R$layout;->startup_manager:I

    invoke-virtual {p0, v0}, Limoblife/startupmanager/MyActivity;->setContentView(I)V

    invoke-direct {p0}, Limoblife/startupmanager/MyActivity;->init()V

    invoke-direct {p0}, Limoblife/startupmanager/MyActivity;->updateUserList()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-direct {p0, p0, p1, p2}, Limoblife/startupmanager/MyActivity;->keyDown(Landroid/app/Activity;ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Limoblife/startupmanager/R$string;->main_info:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Limoblife/startupmanager/R$string;->helpContent:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Limoblife/startupmanager/R$string;->buttonName:I

    new-instance v2, Limoblife/startupmanager/s;

    invoke-direct {v2, p0}, Limoblife/startupmanager/s;-><init>(Limoblife/startupmanager/MyActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    :pswitch_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Limoblife/startupmanager/R$string;->main_about:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Limoblife/startupmanager/R$string;->aboutContent:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Limoblife/startupmanager/R$string;->main_homepage:I

    new-instance v2, Limoblife/startupmanager/t;

    invoke-direct {v2, p0}, Limoblife/startupmanager/t;-><init>(Limoblife/startupmanager/MyActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Limoblife/startupmanager/R$string;->main_close:I

    new-instance v2, Limoblife/startupmanager/u;

    invoke-direct {v2, p0}, Limoblife/startupmanager/u;-><init>(Limoblife/startupmanager/MyActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Limoblife/startupmanager/MyActivity;->finish()V

    goto :goto_0

    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "https://market.android.com/developer?pub=IMOBLIFE+INC."

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Limoblife/startupmanager/MyActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_4
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "https://market.android.com/details?id=imoblife.startupmanager.full"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Limoblife/startupmanager/MyActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_5
    new-instance v0, Landroid/content/Intent;

    const-class v1, Limoblife/startupmanager/SettingsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Limoblife/startupmanager/MyActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    iget-object v0, p0, Limoblife/startupmanager/MyActivity;->myDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Limoblife/startupmanager/MyActivity;->preFocus:Z

    if-nez v0, :cond_0

    new-instance v0, Limoblife/startupmanager/q;

    invoke-direct {v0, p0}, Limoblife/startupmanager/q;-><init>(Limoblife/startupmanager/MyActivity;)V

    invoke-virtual {v0}, Limoblife/startupmanager/q;->start()V

    :cond_0
    iput-boolean p1, p0, Limoblife/startupmanager/MyActivity;->preFocus:Z

    return-void
.end method
