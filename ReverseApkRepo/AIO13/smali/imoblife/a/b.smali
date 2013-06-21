.class public final Limoblife/a/b;
.super Ljava/lang/Object;


# instance fields
.field a:Landroid/content/Context;

.field b:Landroid/view/Menu;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/Menu;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Limoblife/a/b;->a:Landroid/content/Context;

    iput-object p2, p0, Limoblife/a/b;->b:Landroid/view/Menu;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/ComponentName;Landroid/content/Intent;)I
    .locals 12

    const/4 v4, 0x0

    const/high16 v11, 0x4

    const/4 v2, 0x0

    iget-object v0, p0, Limoblife/a/b;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v6, p1, v4, p2, v2}, Landroid/content/pm/PackageManager;->queryIntentActivityOptions(Landroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    move v1, v0

    :goto_0
    iget-object v0, p0, Limoblife/a/b;->b:Landroid/view/Menu;

    invoke-interface {v0, v11}, Landroid/view/Menu;->removeGroup(I)V

    move v5, v2

    :goto_1
    if-lt v5, v1, :cond_1

    return v1

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    new-instance v8, Landroid/content/Intent;

    iget v3, v0, Landroid/content/pm/ResolveInfo;->specificIndex:I

    if-gez v3, :cond_2

    move-object v3, p2

    :goto_2
    invoke-direct {v8, v3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    new-instance v3, Landroid/content/ComponentName;

    iget-object v9, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v10, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v3, p0, Limoblife/a/b;->b:Landroid/view/Menu;

    invoke-virtual {v0, v6}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v3, v11, v2, v2, v9}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v3

    invoke-virtual {v0, v6}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v8}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_1

    :cond_2
    iget v3, v0, Landroid/content/pm/ResolveInfo;->specificIndex:I

    move-object v3, v4

    goto :goto_2
.end method
