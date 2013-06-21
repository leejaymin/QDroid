.class final Limoblife/startupmanager/au;
.super Ljava/lang/Object;


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Landroid/graphics/drawable/Drawable;

.field d:Z

.field final synthetic e:Limoblife/startupmanager/ZCustomizeActivity;


# direct methods
.method public constructor <init>(Limoblife/startupmanager/ZCustomizeActivity;Landroid/content/pm/ApplicationInfo;Z)V
    .locals 1

    iput-object p1, p0, Limoblife/startupmanager/au;->e:Limoblife/startupmanager/ZCustomizeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p3, p0, Limoblife/startupmanager/au;->d:Z

    iget-object v0, p1, Limoblife/startupmanager/ZCustomizeActivity;->pm:Landroid/content/pm/PackageManager;

    invoke-virtual {p2, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Limoblife/startupmanager/au;->a:Ljava/lang/String;

    iget-object v0, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Limoblife/startupmanager/au;->b:Ljava/lang/String;

    iget-object v0, p0, Limoblife/startupmanager/au;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "Unkown App"

    iput-object v0, p0, Limoblife/startupmanager/au;->a:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Limoblife/startupmanager/au;->b:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, "Unkown packageName"

    iput-object v0, p0, Limoblife/startupmanager/au;->b:Ljava/lang/String;

    :cond_1
    iget-object v0, p1, Limoblife/startupmanager/ZCustomizeActivity;->pm:Landroid/content/pm/PackageManager;

    invoke-virtual {p2, v0}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Limoblife/startupmanager/au;->c:Landroid/graphics/drawable/Drawable;

    return-void
.end method
