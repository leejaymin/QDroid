.class public final Lccc71/utils/ah;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;)V
    .locals 15
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 30
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lccc71/utils/b;->a:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 31
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 35
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 39
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "InstalledVersion"

    const-string v5, ""

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 41
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 124
    :cond_0
    :goto_0
    return-void

    .line 51
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "KeepInformed"

    const/4 v6, 0x1

    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 55
    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 56
    const/4 v1, 0x1

    invoke-virtual {v6, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 58
    new-instance v1, Landroid/widget/ScrollView;

    invoke-direct {v1, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 59
    new-instance v7, Landroid/widget/TableLayout;

    invoke-direct {v7, p0}, Landroid/widget/TableLayout;-><init>(Landroid/content/Context;)V

    .line 60
    new-instance v2, Landroid/widget/TableRow$LayoutParams;

    const/4 v8, -0x1

    const/4 v9, -0x2

    invoke-direct {v2, v8, v9}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v7, v2}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 61
    invoke-virtual {v6, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 63
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 64
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 65
    invoke-virtual {v6, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 67
    new-instance v2, Landroid/widget/CheckBox;

    invoke-direct {v2, p0}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    .line 68
    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 69
    new-instance v8, Lccc71/utils/ai;

    invoke-direct {v8, p0}, Lccc71/utils/ai;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v8}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 77
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 78
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 79
    sget v8, Lccc71/utils/f;->b:I

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(I)V

    .line 80
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 82
    const-string v1, ""

    move v14, v0

    move-object v0, v1

    move v1, v14

    .line 83
    :goto_1
    array-length v2, v3

    if-lt v1, v2, :cond_3

    .line 117
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "InstalledVersion"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-static {}, Lccc71/utils/android/y;->a()Lccc71/utils/android/y;

    move-result-object v1

    invoke-virtual {v1, v0}, Lccc71/utils/android/y;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 119
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lccc71/utils/f;->c:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 124
    :catch_0
    move-exception v0

    goto/16 :goto_0

    .line 85
    :cond_3
    aget-object v2, v3, v1

    const-string v8, "\\|"

    invoke-virtual {v2, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 89
    const/4 v2, 0x0

    aget-object v2, v8, v2

    invoke-virtual {v2, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_2

    const/4 v2, 0x0

    aget-object v2, v8, v2

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 90
    new-instance v9, Landroid/widget/TableRow;

    invoke-direct {v9, p0}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    .line 93
    const/4 v2, 0x5

    const/4 v10, 0x5

    const/4 v11, 0x5

    const/4 v12, 0x0

    invoke-virtual {v9, v2, v10, v11, v12}, Landroid/widget/TableRow;->setPadding(IIII)V

    .line 94
    invoke-virtual {v7, v9}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 96
    new-instance v10, Landroid/widget/TextView;

    invoke-direct {v10, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 97
    invoke-virtual {v9, v10}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 98
    const/16 v2, 0xa

    const/16 v11, 0xa

    const/16 v12, 0xa

    const/4 v13, 0x0

    invoke-virtual {v10, v2, v11, v12, v13}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 100
    const/4 v2, 0x0

    aget-object v2, v8, v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 102
    const/4 v0, 0x0

    aget-object v2, v8, v0

    .line 103
    const/4 v0, 0x0

    aget-object v0, v8, v0

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    :goto_2
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 107
    const/4 v10, 0x1

    aget-object v8, v8, v10

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    const/4 v8, 0x7

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 109
    const/16 v8, 0xa

    const/16 v10, 0xa

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v0, v8, v10, v11, v12}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 111
    new-instance v8, Landroid/widget/TableRow$LayoutParams;

    const/4 v10, -0x2

    const/4 v11, -0x2

    const/high16 v12, 0x3f80

    invoke-direct {v8, v10, v11, v12}, Landroid/widget/TableRow$LayoutParams;-><init>(IIF)V

    invoke-virtual {v9, v0, v8}, Landroid/widget/TableRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 112
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/TableRow$LayoutParams;

    const/16 v8, 0xa

    const/16 v9, 0xa

    const/16 v10, 0xa

    const/16 v11, 0xa

    invoke-virtual {v0, v8, v9, v10, v11}, Landroid/widget/TableRow$LayoutParams;->setMargins(IIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v0, v2

    goto/16 :goto_1

    :cond_4
    move-object v2, v0

    goto :goto_2
.end method
