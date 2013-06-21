.class final Lccc71/pmw/lib/mr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field final synthetic a:Lccc71/pmw/lib/pmw_settings;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/pmw_settings;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/mr;->a:Lccc71/pmw/lib/pmw_settings;

    .line 3066
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lccc71/pmw/lib/mr;)Lccc71/pmw/lib/pmw_settings;
    .locals 1
    .parameter

    .prologue
    .line 3066
    iget-object v0, p0, Lccc71/pmw/lib/mr;->a:Lccc71/pmw/lib/pmw_settings;

    return-object v0
.end method


# virtual methods
.method public final onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3
    .parameter

    .prologue
    .line 3071
    iget-object v0, p0, Lccc71/pmw/lib/mr;->a:Lccc71/pmw/lib/pmw_settings;

    invoke-virtual {v0}, Lccc71/pmw/lib/pmw_settings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 3074
    :try_start_0
    const-string v1, "ccc71.bmw.pro"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3103
    :goto_0
    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v1

    .line 3080
    :try_start_1
    const-string v1, "ccc71.bmw.pro.tf"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 3084
    :catch_1
    move-exception v0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lccc71/pmw/lib/mr;->a:Lccc71/pmw/lib/pmw_settings;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3085
    sget v1, Lccc71/pmw/lib/g;->eE:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 3086
    const v1, 0x1040013

    new-instance v2, Lccc71/pmw/lib/ms;

    invoke-direct {v2, p0}, Lccc71/pmw/lib/ms;-><init>(Lccc71/pmw/lib/mr;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 3098
    const v1, 0x1040009

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 3099
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method
