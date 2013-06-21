.class public Limoblife/startupmanager/ZCustomizeActivity;
.super Landroid/app/Activity;


# instance fields
.field private final FORM:[Ljava/lang/String;

.field private final TO:[I

.field bootItem:Ljava/util/List;

.field comparator:Ljava/util/Comparator;

.field private handler:Landroid/os/Handler;

.field private layoutInflater:Landroid/view/LayoutInflater;

.field private listView:Landroid/widget/ListView;

.field private listViewItem:Limoblife/startupmanager/av;

.field pm:Landroid/content/pm/PackageManager;

.field progressDialog:Landroid/app/ProgressDialog;

.field private systemAppList:Ljava/util/List;

.field private userAppList:Ljava/util/List;


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

    iput-object v0, p0, Limoblife/startupmanager/ZCustomizeActivity;->FORM:[Ljava/lang/String;

    new-array v0, v4, [I

    sget v1, Limoblife/startupmanager/R$id;->linkIcon:I

    aput v1, v0, v2

    sget v1, Limoblife/startupmanager/R$id;->linkName:I

    aput v1, v0, v3

    iput-object v0, p0, Limoblife/startupmanager/ZCustomizeActivity;->TO:[I

    new-instance v0, Limoblife/startupmanager/ai;

    invoke-direct {v0, p0}, Limoblife/startupmanager/ai;-><init>(Limoblife/startupmanager/ZCustomizeActivity;)V

    iput-object v0, p0, Limoblife/startupmanager/ZCustomizeActivity;->comparator:Ljava/util/Comparator;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Limoblife/startupmanager/ZCustomizeActivity;->bootItem:Ljava/util/List;

    return-void
.end method

.method static synthetic access$0(Limoblife/startupmanager/ZCustomizeActivity;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Limoblife/startupmanager/ZCustomizeActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1(Limoblife/startupmanager/ZCustomizeActivity;)Landroid/view/LayoutInflater;
    .locals 1

    iget-object v0, p0, Limoblife/startupmanager/ZCustomizeActivity;->layoutInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$2(Limoblife/startupmanager/ZCustomizeActivity;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Limoblife/startupmanager/ZCustomizeActivity;->FORM:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Limoblife/startupmanager/ZCustomizeActivity;)[I
    .locals 1

    iget-object v0, p0, Limoblife/startupmanager/ZCustomizeActivity;->TO:[I

    return-object v0
.end method

.method static synthetic access$4(Limoblife/startupmanager/ZCustomizeActivity;)Limoblife/startupmanager/av;
    .locals 1

    iget-object v0, p0, Limoblife/startupmanager/ZCustomizeActivity;->listViewItem:Limoblife/startupmanager/av;

    return-object v0
.end method

.method static synthetic access$5(Limoblife/startupmanager/ZCustomizeActivity;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Limoblife/startupmanager/ZCustomizeActivity;->userAppList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$6(Limoblife/startupmanager/ZCustomizeActivity;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Limoblife/startupmanager/ZCustomizeActivity;->systemAppList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$7(Limoblife/startupmanager/ZCustomizeActivity;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Limoblife/startupmanager/ZCustomizeActivity;->userAppList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$8(Limoblife/startupmanager/ZCustomizeActivity;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Limoblife/startupmanager/ZCustomizeActivity;->systemAppList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public deleteCustomizeList(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Limoblife/startupmanager/ZCustomizeActivity;->getSQLiteDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DELETE FROM LIST WHERE packageName=\'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    return-void
.end method

.method public getAppInfo(Limoblife/startupmanager/au;)V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v0, 0x4

    new-array v1, v0, [Ljava/lang/String;

    :try_start_0
    invoke-virtual {p0}, Limoblife/startupmanager/ZCustomizeActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v2, p1, Limoblife/startupmanager/au;->b:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    sget v4, Limoblife/startupmanager/R$string;->za_applicationName:I

    invoke-virtual {p0, v4}, Limoblife/startupmanager/ZCustomizeActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Limoblife/startupmanager/au;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    invoke-virtual {p0, v4}, Limoblife/startupmanager/ZCustomizeActivity;->getString(I)Ljava/lang/String;

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

    sget v4, Limoblife/startupmanager/R$string;->za_sourceDirectory:I

    invoke-virtual {p0, v4}, Limoblife/startupmanager/ZCustomizeActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

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

    invoke-virtual {p0, v4}, Limoblife/startupmanager/ZCustomizeActivity;->getString(I)Ljava/lang/String;

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

    invoke-virtual {p0, v5}, Limoblife/startupmanager/ZCustomizeActivity;->getString(I)Ljava/lang/String;

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

    invoke-virtual {p0}, Limoblife/startupmanager/ZCustomizeActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/pm/ApplicationInfo;->loadDescription(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    const/4 v2, 0x3

    new-instance v3, Ljava/lang/StringBuilder;

    sget v4, Limoblife/startupmanager/R$string;->za_applicationDescription:I

    invoke-virtual {p0, v4}, Limoblife/startupmanager/ZCustomizeActivity;->getString(I)Ljava/lang/String;

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

    invoke-virtual {p0}, Limoblife/startupmanager/ZCustomizeActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

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

    iget-object v2, p1, Limoblife/startupmanager/au;->a:Ljava/lang/String;

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v2, p1, Limoblife/startupmanager/au;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog;->setIcon(Landroid/graphics/drawable/Drawable;)V

    new-instance v2, Ljava/lang/StringBuilder;

    aget-object v4, v1, v6

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "\n\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v4, v1, v9

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

    aget-object v1, v1, v8

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Limoblife/startupmanager/ZCustomizeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Limoblife/startupmanager/R$string;->buttonName:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Limoblife/startupmanager/aj;

    invoke-direct {v1, p0}, Limoblife/startupmanager/aj;-><init>(Limoblife/startupmanager/ZCustomizeActivity;)V

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

    invoke-virtual {p0, v4}, Limoblife/startupmanager/ZCustomizeActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Limoblife/startupmanager/R$string;->unknown:I

    invoke-virtual {p0, v4}, Limoblife/startupmanager/ZCustomizeActivity;->getString(I)Ljava/lang/String;

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

    invoke-virtual {p0, v3}, Limoblife/startupmanager/ZCustomizeActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Limoblife/startupmanager/R$string;->unknown:I

    invoke-virtual {p0, v3}, Limoblife/startupmanager/ZCustomizeActivity;->getString(I)Ljava/lang/String;

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

.method public getCustomizeList()Ljava/util/List;
    .locals 8

    const/4 v7, 0x0

    iget-object v0, p0, Limoblife/startupmanager/ZCustomizeActivity;->bootItem:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Limoblife/startupmanager/ZCustomizeActivity;->getSQLiteDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v2, "SELECT packageName,name FROM LIST"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    return-object v1

    :cond_1
    :try_start_0
    iget-object v0, p0, Limoblife/startupmanager/ZCustomizeActivity;->bootItem:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Limoblife/startupmanager/au;

    iget-object v3, p0, Limoblife/startupmanager/ZCustomizeActivity;->pm:Landroid/content/pm/PackageManager;

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v0, p0, v3, v4}, Limoblife/startupmanager/au;-><init>(Limoblife/startupmanager/ZCustomizeActivity;Landroid/content/pm/ApplicationInfo;Z)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    invoke-virtual {p0}, Limoblife/startupmanager/ZCustomizeActivity;->getSQLiteDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v3, "LIST"

    const-string v4, " packageName=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v0, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v0, "DDF"

    const-string v3, "DFDF"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getSQLiteDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 3

    const-string v0, "CUSTOMIZEDATA"

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Limoblife/startupmanager/ZCustomizeActivity;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "CREATE TABLE IF NOT EXISTS LIST(packageName TEXT,name TEXT)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-object v0
.end method

.method public iniAppList()V
    .locals 3

    const-string v0, ""

    sget v1, Limoblife/startupmanager/R$string;->za_wait:I

    invoke-virtual {p0, v1}, Limoblife/startupmanager/ZCustomizeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p0, v0, v1, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Limoblife/startupmanager/ZCustomizeActivity;->progressDialog:Landroid/app/ProgressDialog;

    new-instance v0, Limoblife/startupmanager/ap;

    invoke-direct {v0, p0}, Limoblife/startupmanager/ap;-><init>(Limoblife/startupmanager/ZCustomizeActivity;)V

    invoke-virtual {v0}, Limoblife/startupmanager/ap;->start()V

    return-void
.end method

.method public iniList()V
    .locals 2

    new-instance v0, Limoblife/startupmanager/av;

    invoke-virtual {p0}, Limoblife/startupmanager/ZCustomizeActivity;->getCustomizeList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Limoblife/startupmanager/av;-><init>(Limoblife/startupmanager/ZCustomizeActivity;Ljava/util/List;)V

    iput-object v0, p0, Limoblife/startupmanager/ZCustomizeActivity;->listViewItem:Limoblife/startupmanager/av;

    iget-object v0, p0, Limoblife/startupmanager/ZCustomizeActivity;->listViewItem:Limoblife/startupmanager/av;

    invoke-static {v0}, Limoblife/startupmanager/av;->a(Limoblife/startupmanager/av;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Limoblife/startupmanager/ZCustomizeActivity;->comparator:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v0, p0, Limoblife/startupmanager/ZCustomizeActivity;->listView:Landroid/widget/ListView;

    iget-object v1, p0, Limoblife/startupmanager/ZCustomizeActivity;->listViewItem:Limoblife/startupmanager/av;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    sget v0, Limoblife/startupmanager/R$id;->textView:I

    invoke-virtual {p0, v0}, Limoblife/startupmanager/ZCustomizeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Limoblife/startupmanager/ZCustomizeActivity;->listViewItem:Limoblife/startupmanager/av;

    invoke-static {v1}, Limoblife/startupmanager/av;->a(Limoblife/startupmanager/av;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    sget v1, Limoblife/startupmanager/R$string;->customize_startup:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void

    :cond_0
    sget v1, Limoblife/startupmanager/R$string;->customize_add:I

    goto :goto_0
.end method

.method public isSystemApp(Landroid/content/pm/ApplicationInfo;)Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public keyDown(Landroid/app/Activity;ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    new-instance v0, Limoblife/startupmanager/ExitDialog;

    invoke-direct {v0}, Limoblife/startupmanager/ExitDialog;-><init>()V

    invoke-virtual {v0, p1}, Limoblife/startupmanager/ExitDialog;->showExitWindows(Landroid/app/Activity;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Limoblife/startupmanager/ZCustomizeActivity;->requestWindowFeature(I)Z

    sget v0, Limoblife/startupmanager/R$layout;->zcustomize:I

    invoke-virtual {p0, v0}, Limoblife/startupmanager/ZCustomizeActivity;->setContentView(I)V

    invoke-virtual {p0}, Limoblife/startupmanager/ZCustomizeActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Limoblife/startupmanager/ZCustomizeActivity;->pm:Landroid/content/pm/PackageManager;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Limoblife/startupmanager/ZCustomizeActivity;->layoutInflater:Landroid/view/LayoutInflater;

    sget v0, Limoblife/startupmanager/R$id;->zcustomize_list:I

    invoke-virtual {p0, v0}, Limoblife/startupmanager/ZCustomizeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Limoblife/startupmanager/ZCustomizeActivity;->listView:Landroid/widget/ListView;

    sget-object v0, Limoblife/startupmanager/MyActivity;->deleteItem:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    sget-object v0, Limoblife/startupmanager/MyActivity;->deleteItem:Landroid/widget/Button;

    new-instance v1, Limoblife/startupmanager/ak;

    invoke-direct {v1, p0}, Limoblife/startupmanager/ak;-><init>(Limoblife/startupmanager/ZCustomizeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object v0, Limoblife/startupmanager/MyActivity;->addItem:Landroid/widget/Button;

    new-instance v1, Limoblife/startupmanager/al;

    invoke-direct {v1, p0}, Limoblife/startupmanager/al;-><init>(Limoblife/startupmanager/ZCustomizeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Limoblife/startupmanager/ZCustomizeActivity;->iniList()V

    new-instance v0, Limoblife/startupmanager/am;

    invoke-direct {v0, p0}, Limoblife/startupmanager/am;-><init>(Limoblife/startupmanager/ZCustomizeActivity;)V

    iput-object v0, p0, Limoblife/startupmanager/ZCustomizeActivity;->handler:Landroid/os/Handler;

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-virtual {p0, p0, p1, p2}, Limoblife/startupmanager/ZCustomizeActivity;->keyDown(Landroid/app/Activity;ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public saveCustomizeList(Ljava/lang/String;)V
    .locals 9

    const/4 v5, 0x0

    const/4 v8, 0x0

    invoke-virtual {p0}, Limoblife/startupmanager/ZCustomizeActivity;->getSQLiteDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SELECT * FROM LIST WHERE packageName=\'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SELECT * FROM KILLLIST WHERE packageName=\'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "packageName"

    invoke-virtual {v3, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "LIST"

    invoke-virtual {v0, v4, v5, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_3

    :cond_1
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Limoblife/startupmanager/ZCustomizeActivity;->getSQLiteDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v4, "KILLLIST"

    const-string v5, " packageName=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v3, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public showList(Ljava/util/List;I)V
    .locals 6

    const/4 v5, -0x1

    const/4 v4, -0x3

    new-instance v0, Limoblife/startupmanager/aq;

    invoke-direct {v0, p0, p0, p1}, Limoblife/startupmanager/aq;-><init>(Limoblife/startupmanager/ZCustomizeActivity;Landroid/content/Context;Ljava/util/List;)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    new-instance v2, Limoblife/startupmanager/ar;

    invoke-direct {v2, p0}, Limoblife/startupmanager/ar;-><init>(Limoblife/startupmanager/ZCustomizeActivity;)V

    invoke-virtual {v1, v0, v5, v2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    sget v0, Limoblife/startupmanager/R$string;->main_close:I

    new-instance v2, Limoblife/startupmanager/as;

    invoke-direct {v2, p0}, Limoblife/startupmanager/as;-><init>(Limoblife/startupmanager/ZCustomizeActivity;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v2, Limoblife/startupmanager/R$drawable;->dialogicon:I

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    new-instance v0, Limoblife/startupmanager/at;

    invoke-direct {v0, p0}, Limoblife/startupmanager/at;-><init>(Limoblife/startupmanager/ZCustomizeActivity;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {p0}, Limoblife/startupmanager/ZCustomizeActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Limoblife/startupmanager/R$layout;->dialog_height:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    sget v2, Limoblife/startupmanager/R$id;->height:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, -0x2

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v2, v3, v1}, Landroid/view/Window;->setLayout(II)V

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    sget v2, Limoblife/startupmanager/R$drawable;->refresh:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setTextColor(I)V

    return-void
.end method
