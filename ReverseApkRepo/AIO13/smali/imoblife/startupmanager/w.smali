.class final Limoblife/startupmanager/w;
.super Ljava/lang/Object;


# instance fields
.field a:Landroid/widget/ImageView;

.field b:Landroid/widget/TextView;

.field c:Landroid/widget/TextView;

.field d:Landroid/widget/TextView;

.field e:Landroid/widget/CheckBox;

.field final synthetic f:Limoblife/startupmanager/MyActivity;


# direct methods
.method private constructor <init>(Limoblife/startupmanager/MyActivity;)V
    .locals 0

    iput-object p1, p0, Limoblife/startupmanager/w;->f:Limoblife/startupmanager/MyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Limoblife/startupmanager/MyActivity;B)V
    .locals 0

    invoke-direct {p0, p1}, Limoblife/startupmanager/w;-><init>(Limoblife/startupmanager/MyActivity;)V

    return-void
.end method

.method static synthetic a(Limoblife/startupmanager/w;Limoblife/startupmanager/j;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Limoblife/startupmanager/w;->f:Limoblife/startupmanager/MyActivity;

    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v2, p0, Limoblife/startupmanager/w;->f:Limoblife/startupmanager/MyActivity;

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Limoblife/startupmanager/MyActivity;->myDialog:Landroid/app/ProgressDialog;

    iget-object v0, p0, Limoblife/startupmanager/w;->f:Limoblife/startupmanager/MyActivity;

    iget-object v0, v0, Limoblife/startupmanager/MyActivity;->myDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    iget-object v0, p0, Limoblife/startupmanager/w;->f:Limoblife/startupmanager/MyActivity;

    iget-object v0, v0, Limoblife/startupmanager/MyActivity;->myDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v0, p0, Limoblife/startupmanager/w;->f:Limoblife/startupmanager/MyActivity;

    iget-object v0, v0, Limoblife/startupmanager/MyActivity;->myDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Limoblife/startupmanager/w;->f:Limoblife/startupmanager/MyActivity;

    iget-object v0, v0, Limoblife/startupmanager/MyActivity;->myDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Limoblife/startupmanager/w;->f:Limoblife/startupmanager/MyActivity;

    sget v2, Limoblife/startupmanager/R$string;->startup_dialog_refresh:I

    invoke-virtual {v1, v2}, Limoblife/startupmanager/MyActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Limoblife/startupmanager/w;->f:Limoblife/startupmanager/MyActivity;

    iget-object v0, v0, Limoblife/startupmanager/MyActivity;->myDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    iget-object v0, p0, Limoblife/startupmanager/w;->f:Limoblife/startupmanager/MyActivity;

    iput-object p1, v0, Limoblife/startupmanager/MyActivity;->optionView:Limoblife/startupmanager/j;

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    new-instance v1, Limoblife/startupmanager/x;

    invoke-direct {v1, p0}, Limoblife/startupmanager/x;-><init>(Limoblife/startupmanager/w;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sh "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Limoblife/startupmanager/w;->f:Limoblife/startupmanager/MyActivity;

    const-string v2, "aa"

    invoke-virtual {v1, v2}, Limoblife/startupmanager/MyActivity;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v2, "su"

    aput-object v2, v1, v0

    const/4 v0, 0x1

    const-string v2, "-c"

    aput-object v2, v1, v0

    const/4 v2, 0x2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v0, "pm "

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Limoblife/startupmanager/w;->e:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "disable "

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p1, Limoblife/startupmanager/j;->a:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p1, Limoblife/startupmanager/j;->c:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    sget-object v0, Limoblife/startupmanager/MyActivity;->packageManager:Landroid/content/pm/PackageManager;

    iget-object v2, p1, Limoblife/startupmanager/j;->a:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    :goto_2
    return-void

    :cond_0
    const-string v0, "enable "

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Limoblife/startupmanager/w;->f:Limoblife/startupmanager/MyActivity;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Limoblife/startupmanager/w;->f:Limoblife/startupmanager/MyActivity;

    sget v3, Limoblife/startupmanager/R$string;->buttonName:I

    invoke-virtual {v2, v3}, Limoblife/startupmanager/MyActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Limoblife/startupmanager/y;

    invoke-direct {v3, p0}, Limoblife/startupmanager/y;-><init>(Limoblife/startupmanager/w;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method static synthetic b(Limoblife/startupmanager/w;Limoblife/startupmanager/j;)Landroid/view/View;
    .locals 4

    iget-object v0, p0, Limoblife/startupmanager/w;->f:Limoblife/startupmanager/MyActivity;

    #getter for: Limoblife/startupmanager/MyActivity;->layoutInflater:Landroid/view/LayoutInflater;
    invoke-static {v0}, Limoblife/startupmanager/MyActivity;->access$3(Limoblife/startupmanager/MyActivity;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Limoblife/startupmanager/R$layout;->aa:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    sget v0, Limoblife/startupmanager/R$id;->icon:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Limoblife/startupmanager/w;->a:Landroid/widget/ImageView;

    sget v0, Limoblife/startupmanager/R$id;->text:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Limoblife/startupmanager/w;->b:Landroid/widget/TextView;

    new-instance v0, Landroid/widget/TextView;

    iget-object v2, p0, Limoblife/startupmanager/w;->f:Limoblife/startupmanager/MyActivity;

    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Limoblife/startupmanager/w;->c:Landroid/widget/TextView;

    new-instance v0, Landroid/widget/TextView;

    iget-object v2, p0, Limoblife/startupmanager/w;->f:Limoblife/startupmanager/MyActivity;

    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Limoblife/startupmanager/w;->d:Landroid/widget/TextView;

    sget v0, Limoblife/startupmanager/R$id;->check:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Limoblife/startupmanager/w;->e:Landroid/widget/CheckBox;

    iget-object v0, p1, Limoblife/startupmanager/j;->a:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v2, "imoblife.startupmanager"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Limoblife/startupmanager/j;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Limoblife/startupmanager/w;->e:Landroid/widget/CheckBox;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setEnabled(Z)V

    iget-object v0, p0, Limoblife/startupmanager/w;->e:Landroid/widget/CheckBox;

    sget v2, Limoblife/startupmanager/R$drawable;->checkbox_off:I

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setButtonDrawable(I)V

    :cond_0
    iget-object v0, p0, Limoblife/startupmanager/w;->a:Landroid/widget/ImageView;

    iget-object v2, p1, Limoblife/startupmanager/j;->a:Landroid/content/pm/ApplicationInfo;

    iget-object v3, p0, Limoblife/startupmanager/w;->f:Limoblife/startupmanager/MyActivity;

    invoke-virtual {v3}, Limoblife/startupmanager/MyActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Limoblife/startupmanager/w;->b:Landroid/widget/TextView;

    iget-object v2, p1, Limoblife/startupmanager/j;->a:Landroid/content/pm/ApplicationInfo;

    iget-object v3, p0, Limoblife/startupmanager/w;->f:Limoblife/startupmanager/MyActivity;

    invoke-virtual {v3}, Limoblife/startupmanager/MyActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Limoblife/startupmanager/w;->c:Landroid/widget/TextView;

    iget-object v2, p1, Limoblife/startupmanager/j;->a:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Limoblife/startupmanager/w;->d:Landroid/widget/TextView;

    iget-object v2, p1, Limoblife/startupmanager/j;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Limoblife/startupmanager/w;->e:Landroid/widget/CheckBox;

    iget-boolean v2, p1, Limoblife/startupmanager/j;->b:Z

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Limoblife/startupmanager/w;->e:Landroid/widget/CheckBox;

    new-instance v2, Limoblife/startupmanager/z;

    invoke-direct {v2, p0, p1}, Limoblife/startupmanager/z;-><init>(Limoblife/startupmanager/w;Limoblife/startupmanager/j;)V

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object v1
.end method
