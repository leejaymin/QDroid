.class public Lccc71/bmw/lib/bmw_icon_package_list;
.super Lccc71/utils/ccc71_license_activity;
.source "SourceFile"


# instance fields
.field private a:Landroid/view/View;

.field private b:Ljava/util/List;

.field private c:[Landroid/graphics/drawable/Drawable;

.field private d:[Ljava/lang/String;

.field private e:Landroid/widget/TableLayout;

.field private f:Landroid/widget/TableLayout;

.field private g:Ljava/lang/String;

.field private h:Landroid/view/View$OnTouchListener;

.field private i:Landroid/view/View$OnClickListener;

.field private j:Landroid/view/View$OnClickListener;

.field private k:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lccc71/utils/ccc71_license_activity;-><init>()V

    .line 181
    new-instance v0, Lccc71/bmw/lib/bj;

    invoke-direct {v0, p0}, Lccc71/bmw/lib/bj;-><init>(Lccc71/bmw/lib/bmw_icon_package_list;)V

    iput-object v0, p0, Lccc71/bmw/lib/bmw_icon_package_list;->h:Landroid/view/View$OnTouchListener;

    .line 196
    new-instance v0, Lccc71/bmw/lib/bk;

    invoke-direct {v0, p0}, Lccc71/bmw/lib/bk;-><init>(Lccc71/bmw/lib/bmw_icon_package_list;)V

    iput-object v0, p0, Lccc71/bmw/lib/bmw_icon_package_list;->i:Landroid/view/View$OnClickListener;

    .line 235
    new-instance v0, Lccc71/bmw/lib/bl;

    invoke-direct {v0, p0}, Lccc71/bmw/lib/bl;-><init>(Lccc71/bmw/lib/bmw_icon_package_list;)V

    iput-object v0, p0, Lccc71/bmw/lib/bmw_icon_package_list;->j:Landroid/view/View$OnClickListener;

    .line 250
    new-instance v0, Lccc71/bmw/lib/bm;

    invoke-direct {v0, p0}, Lccc71/bmw/lib/bm;-><init>(Lccc71/bmw/lib/bmw_icon_package_list;)V

    iput-object v0, p0, Lccc71/bmw/lib/bmw_icon_package_list;->k:Landroid/view/View$OnClickListener;

    .line 26
    return-void
.end method

.method static synthetic a(Lccc71/bmw/lib/bmw_icon_package_list;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lccc71/bmw/lib/bmw_icon_package_list;->a:Landroid/view/View;

    return-object v0
.end method

.method static synthetic a(Lccc71/bmw/lib/bmw_icon_package_list;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 28
    iput-object p1, p0, Lccc71/bmw/lib/bmw_icon_package_list;->a:Landroid/view/View;

    return-void
.end method

.method static synthetic a(Lccc71/bmw/lib/bmw_icon_package_list;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 37
    iput-object p1, p0, Lccc71/bmw/lib/bmw_icon_package_list;->g:Ljava/lang/String;

    return-void
.end method

.method static synthetic b(Lccc71/bmw/lib/bmw_icon_package_list;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lccc71/bmw/lib/bmw_icon_package_list;->b:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c(Lccc71/bmw/lib/bmw_icon_package_list;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lccc71/bmw/lib/bmw_icon_package_list;->g:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lccc71/bmw/lib/bmw_icon_package_list;)[Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lccc71/bmw/lib/bmw_icon_package_list;->c:[Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic e(Lccc71/bmw/lib/bmw_icon_package_list;)[Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lccc71/bmw/lib/bmw_icon_package_list;->d:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lccc71/bmw/lib/bmw_icon_package_list;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter

    .prologue
    .line 235
    iget-object v0, p0, Lccc71/bmw/lib/bmw_icon_package_list;->j:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic g(Lccc71/bmw/lib/bmw_icon_package_list;)Landroid/view/View$OnTouchListener;
    .locals 1
    .parameter

    .prologue
    .line 181
    iget-object v0, p0, Lccc71/bmw/lib/bmw_icon_package_list;->h:Landroid/view/View$OnTouchListener;

    return-object v0
.end method

.method static synthetic h(Lccc71/bmw/lib/bmw_icon_package_list;)Landroid/widget/TableLayout;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lccc71/bmw/lib/bmw_icon_package_list;->f:Landroid/widget/TableLayout;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 42
    invoke-super {p0, p1}, Lccc71/utils/ccc71_license_activity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 178
    invoke-super {p0}, Lccc71/utils/ccc71_license_activity;->onDestroy()V

    .line 179
    return-void
.end method

.method protected onResume()V
    .locals 15

    .prologue
    const/16 v14, 0x10

    const/high16 v13, 0x4190

    const/4 v4, 0x0

    const/4 v12, 0x2

    .line 48
    invoke-super {p0}, Lccc71/utils/ccc71_license_activity;->onResume()V

    .line 50
    const-string v0, "battery_widget_monitor"

    const-string v1, "bmw_icon_package_list - onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    sget v0, Lccc71/bmw/lib/e;->bf:I

    invoke-virtual {p0, v0}, Lccc71/bmw/lib/bmw_icon_package_list;->setContentView(I)V

    .line 54
    invoke-virtual {p0}, Lccc71/bmw/lib/bmw_icon_package_list;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 56
    invoke-static {p0}, Lccc71/bmw/lib/bmw_settings;->u(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccc71/bmw/lib/bmw_icon_package_list;->g:Ljava/lang/String;

    .line 57
    iget-object v0, p0, Lccc71/bmw/lib/bmw_icon_package_list;->g:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 58
    const-string v0, ""

    iput-object v0, p0, Lccc71/bmw/lib/bmw_icon_package_list;->g:Ljava/lang/String;

    .line 60
    :cond_0
    sget v0, Lccc71/bmw/lib/d;->dd:I

    invoke-virtual {p0, v0}, Lccc71/bmw/lib/bmw_icon_package_list;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableLayout;

    iput-object v0, p0, Lccc71/bmw/lib/bmw_icon_package_list;->e:Landroid/widget/TableLayout;

    .line 61
    :goto_0
    iget-object v0, p0, Lccc71/bmw/lib/bmw_icon_package_list;->e:Landroid/widget/TableLayout;

    invoke-virtual {v0}, Landroid/widget/TableLayout;->getChildCount()I

    move-result v0

    if-gt v0, v12, :cond_1

    .line 64
    sget v0, Lccc71/bmw/lib/d;->dc:I

    invoke-virtual {p0, v0}, Lccc71/bmw/lib/bmw_icon_package_list;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableLayout;

    iput-object v0, p0, Lccc71/bmw/lib/bmw_icon_package_list;->f:Landroid/widget/TableLayout;

    .line 65
    :goto_1
    iget-object v0, p0, Lccc71/bmw/lib/bmw_icon_package_list;->f:Landroid/widget/TableLayout;

    invoke-virtual {v0}, Landroid/widget/TableLayout;->getChildCount()I

    move-result v0

    if-gt v0, v12, :cond_2

    .line 69
    invoke-virtual {v5, v4}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lccc71/bmw/lib/bmw_icon_package_list;->b:Ljava/util/List;

    .line 70
    iget-object v0, p0, Lccc71/bmw/lib/bmw_icon_package_list;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    .line 71
    new-array v0, v6, [Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lccc71/bmw/lib/bmw_icon_package_list;->c:[Landroid/graphics/drawable/Drawable;

    .line 72
    new-array v0, v6, [Ljava/lang/String;

    iput-object v0, p0, Lccc71/bmw/lib/bmw_icon_package_list;->d:[Ljava/lang/String;

    move v3, v4

    move v2, v4

    .line 74
    :goto_2
    if-lt v3, v6, :cond_3

    .line 134
    if-nez v2, :cond_6

    .line 138
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 139
    const-string v1, "http://www.3c71.com/android/?q=node/435#main-content-area"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 140
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 141
    invoke-virtual {p0, v0}, Lccc71/bmw/lib/bmw_icon_package_list;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 150
    :goto_3
    invoke-virtual {p0}, Lccc71/bmw/lib/bmw_icon_package_list;->finish()V

    .line 173
    :goto_4
    return-void

    .line 62
    :cond_1
    iget-object v0, p0, Lccc71/bmw/lib/bmw_icon_package_list;->e:Landroid/widget/TableLayout;

    iget-object v1, p0, Lccc71/bmw/lib/bmw_icon_package_list;->e:Landroid/widget/TableLayout;

    invoke-virtual {v1}, Landroid/widget/TableLayout;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TableLayout;->removeViewAt(I)V

    goto :goto_0

    .line 66
    :cond_2
    iget-object v0, p0, Lccc71/bmw/lib/bmw_icon_package_list;->f:Landroid/widget/TableLayout;

    iget-object v1, p0, Lccc71/bmw/lib/bmw_icon_package_list;->e:Landroid/widget/TableLayout;

    invoke-virtual {v1}, Landroid/widget/TableLayout;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TableLayout;->removeViewAt(I)V

    goto :goto_1

    .line 76
    :cond_3
    iget-object v0, p0, Lccc71/bmw/lib/bmw_icon_package_list;->b:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    .line 77
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v7, "ccc71.bmw.icons."

    invoke-virtual {v1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 78
    :try_start_1
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {v5, v1, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 83
    iget-object v7, p0, Lccc71/bmw/lib/bmw_icon_package_list;->d:[Ljava/lang/String;

    invoke-virtual {v5, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    aput-object v1, v7, v3

    .line 84
    iget-object v1, p0, Lccc71/bmw/lib/bmw_icon_package_list;->c:[Landroid/graphics/drawable/Drawable;

    iget-object v7, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    aput-object v7, v1, v3

    .line 86
    new-instance v1, Landroid/widget/TableRow;

    invoke-direct {v1, p0}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    .line 88
    new-instance v7, Landroid/widget/ImageView;

    invoke-direct {v7, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 89
    iget-object v8, p0, Lccc71/bmw/lib/bmw_icon_package_list;->c:[Landroid/graphics/drawable/Drawable;

    aget-object v8, v8, v3

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 90
    invoke-virtual {v1, v7}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 92
    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 93
    const/4 v8, 0x2

    const/4 v9, 0x2

    const/4 v10, 0x2

    const/4 v11, 0x2

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 94
    const/high16 v8, 0x4190

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextSize(F)V

    .line 95
    iget-object v8, p0, Lccc71/bmw/lib/bmw_icon_package_list;->d:[Ljava/lang/String;

    aget-object v8, v8, v3

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    const/16 v8, 0x10

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 98
    invoke-virtual {v1, v7}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 99
    invoke-virtual {v1, v3}, Landroid/widget/TableRow;->setId(I)V

    .line 100
    iget-object v7, p0, Lccc71/bmw/lib/bmw_icon_package_list;->i:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v7}, Landroid/widget/TableRow;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    iget-object v7, p0, Lccc71/bmw/lib/bmw_icon_package_list;->h:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v7}, Landroid/widget/TableRow;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 103
    iget-object v7, p0, Lccc71/bmw/lib/bmw_icon_package_list;->e:Landroid/widget/TableLayout;

    invoke-virtual {v7, v1}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 105
    iget-object v1, p0, Lccc71/bmw/lib/bmw_icon_package_list;->g:Ljava/lang/String;

    iget-object v7, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 107
    new-instance v1, Landroid/widget/TableRow;

    invoke-direct {v1, p0}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    .line 109
    new-instance v7, Landroid/widget/ImageView;

    invoke-direct {v7, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 110
    iget-object v8, p0, Lccc71/bmw/lib/bmw_icon_package_list;->c:[Landroid/graphics/drawable/Drawable;

    aget-object v8, v8, v3

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 111
    invoke-virtual {v1, v7}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 113
    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 114
    const/4 v8, 0x2

    const/4 v9, 0x2

    const/4 v10, 0x2

    const/4 v11, 0x2

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 115
    const/high16 v8, 0x4190

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextSize(F)V

    .line 116
    iget-object v8, p0, Lccc71/bmw/lib/bmw_icon_package_list;->d:[Ljava/lang/String;

    aget-object v8, v8, v3

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    const/16 v8, 0x10

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 118
    invoke-virtual {v1, v7}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 120
    invoke-virtual {v1, v3}, Landroid/widget/TableRow;->setId(I)V

    .line 121
    iget-object v7, p0, Lccc71/bmw/lib/bmw_icon_package_list;->j:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v7}, Landroid/widget/TableRow;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    iget-object v7, p0, Lccc71/bmw/lib/bmw_icon_package_list;->h:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v7}, Landroid/widget/TableRow;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 124
    iget-object v7, p0, Lccc71/bmw/lib/bmw_icon_package_list;->f:Landroid/widget/TableLayout;

    invoke-virtual {v7, v1}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 126
    :cond_4
    const/4 v0, 0x1

    .line 74
    :goto_5
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v2, v0

    goto/16 :goto_2

    .line 128
    :catch_0
    move-exception v1

    .line 130
    const-string v7, "battery_widget_monitor"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Failed to load application "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, " data: "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    move v0, v2

    goto :goto_5

    .line 143
    :catch_1
    move-exception v0

    .line 145
    const-string v1, "battery_widget_monitor"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to view application market apps: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    sget v0, Lccc71/bmw/lib/g;->cF:I

    invoke-virtual {p0, v0}, Lccc71/bmw/lib/bmw_icon_package_list;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 148
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_3

    .line 154
    :cond_6
    new-instance v0, Landroid/widget/TableRow;

    invoke-direct {v0, p0}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    .line 156
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 157
    invoke-virtual {v0, v1}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 159
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 160
    invoke-virtual {v1, v12, v12, v12, v12}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 161
    invoke-virtual {v1, v13}, Landroid/widget/TextView;->setTextSize(F)V

    .line 163
    sget v2, Lccc71/bmw/lib/g;->cs:I

    invoke-virtual {p0, v2}, Lccc71/bmw/lib/bmw_icon_package_list;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    invoke-virtual {v1, v14}, Landroid/widget/TextView;->setGravity(I)V

    .line 166
    invoke-virtual {v0, v1}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 167
    invoke-virtual {v0, v4}, Landroid/widget/TableRow;->setId(I)V

    .line 168
    iget-object v1, p0, Lccc71/bmw/lib/bmw_icon_package_list;->k:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TableRow;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    iget-object v1, p0, Lccc71/bmw/lib/bmw_icon_package_list;->h:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/TableRow;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 171
    iget-object v1, p0, Lccc71/bmw/lib/bmw_icon_package_list;->e:Landroid/widget/TableLayout;

    invoke-virtual {v1, v0}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_4
.end method
