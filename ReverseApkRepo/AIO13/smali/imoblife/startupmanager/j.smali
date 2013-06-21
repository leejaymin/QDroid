.class final Limoblife/startupmanager/j;
.super Ljava/lang/Object;


# instance fields
.field protected a:Landroid/content/pm/ApplicationInfo;

.field protected b:Z

.field protected c:Ljava/lang/String;

.field d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/pm/ApplicationInfo;ZLjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Limoblife/startupmanager/j;->a:Landroid/content/pm/ApplicationInfo;

    iput-boolean p2, p0, Limoblife/startupmanager/j;->b:Z

    iput-object p3, p0, Limoblife/startupmanager/j;->c:Ljava/lang/String;

    sget-object v0, Limoblife/startupmanager/MyActivity;->packageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Limoblife/startupmanager/j;->d:Ljava/lang/String;

    iget-object v0, p0, Limoblife/startupmanager/j;->d:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "Unkown"

    iput-object v0, p0, Limoblife/startupmanager/j;->d:Ljava/lang/String;

    :cond_0
    return-void
.end method
