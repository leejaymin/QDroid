.class final Limoblife/startupmanager/c;
.super Ljava/lang/Object;


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Landroid/graphics/drawable/Drawable;

.field final synthetic d:Limoblife/startupmanager/BootList;


# direct methods
.method public constructor <init>(Limoblife/startupmanager/BootList;Ljava/lang/String;)V
    .locals 3

    iput-object p1, p0, Limoblife/startupmanager/c;->d:Limoblife/startupmanager/BootList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Limoblife/startupmanager/c;->a:Ljava/lang/String;

    :try_start_0
    iget-object v0, p1, Limoblife/startupmanager/BootList;->pm:Landroid/content/pm/PackageManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, p1, Limoblife/startupmanager/BootList;->pm:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Limoblife/startupmanager/c;->b:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, p1, Limoblife/startupmanager/BootList;->pm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Limoblife/startupmanager/c;->c:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Limoblife/startupmanager/c;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "Unkown"

    iput-object v0, p0, Limoblife/startupmanager/c;->b:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method
