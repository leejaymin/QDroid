.class final Lccc71/pmw/lib/gg;
.super Lccc71/utils/android/a;
.source "SourceFile"


# instance fields
.field a:Z

.field final synthetic b:Lccc71/pmw/lib/pmw_icon_package_list;

.field private final synthetic c:Landroid/content/pm/PackageManager;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/pmw_icon_package_list;Landroid/content/pm/PackageManager;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/gg;->b:Lccc71/pmw/lib/pmw_icon_package_list;

    iput-object p2, p0, Lccc71/pmw/lib/gg;->c:Landroid/content/pm/PackageManager;

    .line 57
    invoke-direct {p0}, Lccc71/utils/android/a;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccc71/pmw/lib/gg;->a:Z

    return-void
.end method

.method private varargs d()Ljava/lang/Void;
    .locals 10

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 64
    iget-object v0, p0, Lccc71/pmw/lib/gg;->b:Lccc71/pmw/lib/pmw_icon_package_list;

    iget-object v2, p0, Lccc71/pmw/lib/gg;->b:Lccc71/pmw/lib/pmw_icon_package_list;

    invoke-static {v2}, Lccc71/pmw/lib/pmw_settings;->ab(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lccc71/pmw/lib/pmw_icon_package_list;->a(Lccc71/pmw/lib/pmw_icon_package_list;Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lccc71/pmw/lib/gg;->b:Lccc71/pmw/lib/pmw_icon_package_list;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_icon_package_list;->c(Lccc71/pmw/lib/pmw_icon_package_list;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 66
    iget-object v0, p0, Lccc71/pmw/lib/gg;->b:Lccc71/pmw/lib/pmw_icon_package_list;

    const-string v2, ""

    invoke-static {v0, v2}, Lccc71/pmw/lib/pmw_icon_package_list;->a(Lccc71/pmw/lib/pmw_icon_package_list;Ljava/lang/String;)V

    .line 68
    :cond_0
    iget-object v0, p0, Lccc71/pmw/lib/gg;->c:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v4

    .line 70
    iget-object v0, p0, Lccc71/pmw/lib/gg;->b:Lccc71/pmw/lib/pmw_icon_package_list;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_icon_package_list;->c(Lccc71/pmw/lib/pmw_icon_package_list;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 75
    iget-object v0, p0, Lccc71/pmw/lib/gg;->b:Lccc71/pmw/lib/pmw_icon_package_list;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_icon_package_list;->c(Lccc71/pmw/lib/pmw_icon_package_list;)Ljava/lang/String;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 76
    array-length v6, v5

    move v2, v3

    move v0, v3

    .line 77
    :goto_0
    if-lt v2, v6, :cond_3

    .line 98
    if-eqz v0, :cond_1

    .line 99
    iget-object v0, p0, Lccc71/pmw/lib/gg;->b:Lccc71/pmw/lib/pmw_icon_package_list;

    iget-object v1, p0, Lccc71/pmw/lib/gg;->b:Lccc71/pmw/lib/pmw_icon_package_list;

    invoke-static {v1}, Lccc71/pmw/lib/pmw_icon_package_list;->c(Lccc71/pmw/lib/pmw_icon_package_list;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lccc71/pmw/lib/pmw_settings;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 102
    :cond_1
    iget-object v0, p0, Lccc71/pmw/lib/gg;->b:Lccc71/pmw/lib/pmw_icon_package_list;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_icon_package_list;->e(Lccc71/pmw/lib/pmw_icon_package_list;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 103
    iget-object v0, p0, Lccc71/pmw/lib/gg;->b:Lccc71/pmw/lib/pmw_icon_package_list;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_icon_package_list;->f(Lccc71/pmw/lib/pmw_icon_package_list;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 104
    iget-object v0, p0, Lccc71/pmw/lib/gg;->b:Lccc71/pmw/lib/pmw_icon_package_list;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_icon_package_list;->b(Lccc71/pmw/lib/pmw_icon_package_list;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 106
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    move v2, v3

    .line 108
    :goto_1
    if-lt v2, v5, :cond_5

    .line 128
    iget-boolean v0, p0, Lccc71/pmw/lib/gg;->a:Z

    if-nez v0, :cond_2

    .line 132
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 133
    const-string v1, "http://www.3c71.com/android/?q=node/436#main-content-area"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 134
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 136
    iget-object v1, p0, Lccc71/pmw/lib/gg;->b:Lccc71/pmw/lib/pmw_icon_package_list;

    invoke-virtual {v1, v0}, Lccc71/pmw/lib/pmw_icon_package_list;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 143
    :goto_2
    invoke-virtual {p0}, Lccc71/pmw/lib/gg;->c()Z

    .line 145
    iget-object v0, p0, Lccc71/pmw/lib/gg;->b:Lccc71/pmw/lib/pmw_icon_package_list;

    invoke-virtual {v0}, Lccc71/pmw/lib/pmw_icon_package_list;->finish()V

    .line 148
    :cond_2
    const/4 v0, 0x0

    return-object v0

    .line 79
    :cond_3
    aget-object v7, v5, v2

    .line 80
    const-string v8, "ccc71.pmw.icons"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 82
    iget-object v0, p0, Lccc71/pmw/lib/gg;->b:Lccc71/pmw/lib/pmw_icon_package_list;

    iget-object v8, p0, Lccc71/pmw/lib/gg;->b:Lccc71/pmw/lib/pmw_icon_package_list;

    invoke-static {v8}, Lccc71/pmw/lib/pmw_icon_package_list;->c(Lccc71/pmw/lib/pmw_icon_package_list;)Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v7, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "  "

    const-string v9, " "

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lccc71/pmw/lib/pmw_icon_package_list;->a(Lccc71/pmw/lib/pmw_icon_package_list;Ljava/lang/String;)V

    move v0, v1

    .line 77
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 89
    :cond_4
    :try_start_1
    iget-object v8, p0, Lccc71/pmw/lib/gg;->c:Landroid/content/pm/PackageManager;

    invoke-virtual {v8, v7}, Landroid/content/pm/PackageManager;->getPackageGids(Ljava/lang/String;)[I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 93
    :catch_0
    move-exception v0

    iget-object v0, p0, Lccc71/pmw/lib/gg;->b:Lccc71/pmw/lib/pmw_icon_package_list;

    iget-object v8, p0, Lccc71/pmw/lib/gg;->b:Lccc71/pmw/lib/pmw_icon_package_list;

    invoke-static {v8}, Lccc71/pmw/lib/pmw_icon_package_list;->c(Lccc71/pmw/lib/pmw_icon_package_list;)Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v7, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "  "

    const-string v9, " "

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lccc71/pmw/lib/pmw_icon_package_list;->a(Lccc71/pmw/lib/pmw_icon_package_list;Ljava/lang/String;)V

    move v0, v1

    .line 94
    goto :goto_3

    .line 110
    :cond_5
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    .line 111
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v6, "ccc71.pmw.icons."

    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 112
    :try_start_2
    iget-object v1, p0, Lccc71/pmw/lib/gg;->c:Landroid/content/pm/PackageManager;

    iget-object v6, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 117
    iget-object v6, p0, Lccc71/pmw/lib/gg;->b:Lccc71/pmw/lib/pmw_icon_package_list;

    invoke-static {v6}, Lccc71/pmw/lib/pmw_icon_package_list;->f(Lccc71/pmw/lib/pmw_icon_package_list;)Ljava/util/ArrayList;

    move-result-object v6

    iget-object v7, p0, Lccc71/pmw/lib/gg;->c:Landroid/content/pm/PackageManager;

    invoke-virtual {v7, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    iget-object v1, p0, Lccc71/pmw/lib/gg;->b:Lccc71/pmw/lib/pmw_icon_package_list;

    invoke-static {v1}, Lccc71/pmw/lib/pmw_icon_package_list;->e(Lccc71/pmw/lib/pmw_icon_package_list;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v6, p0, Lccc71/pmw/lib/gg;->c:Landroid/content/pm/PackageManager;

    iget-object v7, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    iget-object v1, p0, Lccc71/pmw/lib/gg;->b:Lccc71/pmw/lib/pmw_icon_package_list;

    invoke-static {v1}, Lccc71/pmw/lib/pmw_icon_package_list;->b(Lccc71/pmw/lib/pmw_icon_package_list;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccc71/pmw/lib/gg;->a:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 108
    :cond_6
    :goto_4
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_1

    .line 138
    :catch_1
    move-exception v0

    .line 140
    new-array v0, v3, [Ljava/lang/Void;

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/gg;->d([Ljava/lang/Object;)V

    goto/16 :goto_2

    :catch_2
    move-exception v0

    goto :goto_4
.end method


# virtual methods
.method protected final varargs synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-direct {p0}, Lccc71/pmw/lib/gg;->d()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic a(Ljava/lang/Object;)V
    .locals 6
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x2

    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-super {p0, p1}, Lccc71/utils/android/a;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lccc71/pmw/lib/gg;->b:Lccc71/pmw/lib/pmw_icon_package_list;

    invoke-virtual {v0}, Lccc71/pmw/lib/pmw_icon_package_list;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lccc71/pmw/lib/gg;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lccc71/pmw/lib/gg;->b:Lccc71/pmw/lib/pmw_icon_package_list;

    iget-object v0, p0, Lccc71/pmw/lib/gg;->b:Lccc71/pmw/lib/pmw_icon_package_list;

    sget v3, Lccc71/pmw/lib/d;->fH:I

    invoke-virtual {v0, v3}, Lccc71/pmw/lib/pmw_icon_package_list;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableLayout;

    invoke-static {v1, v0}, Lccc71/pmw/lib/pmw_icon_package_list;->a(Lccc71/pmw/lib/pmw_icon_package_list;Landroid/widget/TableLayout;)V

    :goto_1
    iget-object v0, p0, Lccc71/pmw/lib/gg;->b:Lccc71/pmw/lib/pmw_icon_package_list;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_icon_package_list;->g(Lccc71/pmw/lib/pmw_icon_package_list;)Landroid/widget/TableLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TableLayout;->getChildCount()I

    move-result v0

    if-gt v0, v4, :cond_2

    iget-object v1, p0, Lccc71/pmw/lib/gg;->b:Lccc71/pmw/lib/pmw_icon_package_list;

    iget-object v0, p0, Lccc71/pmw/lib/gg;->b:Lccc71/pmw/lib/pmw_icon_package_list;

    sget v3, Lccc71/pmw/lib/d;->fC:I

    invoke-virtual {v0, v3}, Lccc71/pmw/lib/pmw_icon_package_list;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableLayout;

    invoke-static {v1, v0}, Lccc71/pmw/lib/pmw_icon_package_list;->b(Lccc71/pmw/lib/pmw_icon_package_list;Landroid/widget/TableLayout;)V

    :goto_2
    iget-object v0, p0, Lccc71/pmw/lib/gg;->b:Lccc71/pmw/lib/pmw_icon_package_list;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_icon_package_list;->d(Lccc71/pmw/lib/pmw_icon_package_list;)Landroid/widget/TableLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TableLayout;->getChildCount()I

    move-result v0

    if-gt v0, v4, :cond_3

    iget-object v0, p0, Lccc71/pmw/lib/gg;->b:Lccc71/pmw/lib/pmw_icon_package_list;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_icon_package_list;->b(Lccc71/pmw/lib/pmw_icon_package_list;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v2

    :goto_3
    if-lt v1, v3, :cond_4

    iget-object v0, p0, Lccc71/pmw/lib/gg;->b:Lccc71/pmw/lib/pmw_icon_package_list;

    sget v1, Lccc71/pmw/lib/d;->O:I

    invoke-virtual {v0, v1}, Lccc71/pmw/lib/pmw_icon_package_list;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lccc71/pmw/lib/gg;->b:Lccc71/pmw/lib/pmw_icon_package_list;

    invoke-static {v1}, Lccc71/pmw/lib/pmw_icon_package_list;->h(Lccc71/pmw/lib/pmw_icon_package_list;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lccc71/pmw/lib/gg;->b:Lccc71/pmw/lib/pmw_icon_package_list;

    sget v1, Lccc71/pmw/lib/d;->ja:I

    invoke-virtual {v0, v1}, Lccc71/pmw/lib/pmw_icon_package_list;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lccc71/pmw/lib/gg;->b:Lccc71/pmw/lib/pmw_icon_package_list;

    invoke-static {v1}, Lccc71/pmw/lib/pmw_icon_package_list;->h(Lccc71/pmw/lib/pmw_icon_package_list;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lccc71/pmw/lib/gg;->b:Lccc71/pmw/lib/pmw_icon_package_list;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_icon_package_list;->g(Lccc71/pmw/lib/pmw_icon_package_list;)Landroid/widget/TableLayout;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TableLayout;->removeViewAt(I)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lccc71/pmw/lib/gg;->b:Lccc71/pmw/lib/pmw_icon_package_list;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_icon_package_list;->d(Lccc71/pmw/lib/pmw_icon_package_list;)Landroid/widget/TableLayout;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TableLayout;->removeViewAt(I)V

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lccc71/pmw/lib/gg;->b:Lccc71/pmw/lib/pmw_icon_package_list;

    iget-object v4, p0, Lccc71/pmw/lib/gg;->c:Landroid/content/pm/PackageManager;

    invoke-static {v0, v4, v1, v2}, Lccc71/pmw/lib/pmw_icon_package_list;->a(Lccc71/pmw/lib/pmw_icon_package_list;Landroid/content/pm/PackageManager;IZ)Landroid/view/View;

    move-result-object v0

    iget-object v4, p0, Lccc71/pmw/lib/gg;->b:Lccc71/pmw/lib/pmw_icon_package_list;

    invoke-static {v4}, Lccc71/pmw/lib/pmw_icon_package_list;->g(Lccc71/pmw/lib/pmw_icon_package_list;)Landroid/widget/TableLayout;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lccc71/pmw/lib/gg;->b:Lccc71/pmw/lib/pmw_icon_package_list;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_icon_package_list;->c(Lccc71/pmw/lib/pmw_icon_package_list;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v0, p0, Lccc71/pmw/lib/gg;->b:Lccc71/pmw/lib/pmw_icon_package_list;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_icon_package_list;->b(Lccc71/pmw/lib/pmw_icon_package_list;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, " "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lccc71/pmw/lib/gg;->b:Lccc71/pmw/lib/pmw_icon_package_list;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_icon_package_list;->c(Lccc71/pmw/lib/pmw_icon_package_list;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lccc71/pmw/lib/gg;->b:Lccc71/pmw/lib/pmw_icon_package_list;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_icon_package_list;->b(Lccc71/pmw/lib/pmw_icon_package_list;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    iget-object v0, p0, Lccc71/pmw/lib/gg;->b:Lccc71/pmw/lib/pmw_icon_package_list;

    iget-object v4, p0, Lccc71/pmw/lib/gg;->c:Landroid/content/pm/PackageManager;

    const/4 v5, 0x1

    invoke-static {v0, v4, v1, v5}, Lccc71/pmw/lib/pmw_icon_package_list;->a(Lccc71/pmw/lib/pmw_icon_package_list;Landroid/content/pm/PackageManager;IZ)Landroid/view/View;

    move-result-object v0

    iget-object v4, p0, Lccc71/pmw/lib/gg;->b:Lccc71/pmw/lib/pmw_icon_package_list;

    invoke-static {v4}, Lccc71/pmw/lib/pmw_icon_package_list;->d(Lccc71/pmw/lib/pmw_icon_package_list;)Landroid/widget/TableLayout;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    :cond_6
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_3
.end method

.method protected final varargs synthetic b([Ljava/lang/Object;)V
    .locals 3
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-super {p0, p1}, Lccc71/utils/android/a;->b([Ljava/lang/Object;)V

    iget-object v0, p0, Lccc71/pmw/lib/gg;->b:Lccc71/pmw/lib/pmw_icon_package_list;

    iget-object v1, p0, Lccc71/pmw/lib/gg;->b:Lccc71/pmw/lib/pmw_icon_package_list;

    sget v2, Lccc71/pmw/lib/g;->dK:I

    invoke-virtual {v1, v2}, Lccc71/pmw/lib/pmw_icon_package_list;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
