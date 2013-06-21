.class final Lccc71/bmw/lib/bu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field final synthetic a:Lccc71/bmw/lib/bmw_settings;

.field private final synthetic b:Landroid/preference/Preference;


# direct methods
.method constructor <init>(Lccc71/bmw/lib/bmw_settings;Landroid/preference/Preference;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/bmw/lib/bu;->a:Lccc71/bmw/lib/bmw_settings;

    iput-object p2, p0, Lccc71/bmw/lib/bu;->b:Landroid/preference/Preference;

    .line 1432
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 1436
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1437
    iget-object v0, p0, Lccc71/bmw/lib/bu;->a:Lccc71/bmw/lib/bmw_settings;

    sget v2, Lccc71/bmw/lib/bmw_settings;->c:I

    invoke-static {v0, v2, v1}, Lccc71/bmw/lib/bmw_settings;->g(Landroid/content/Context;II)V

    .line 1438
    iget-object v0, p0, Lccc71/bmw/lib/bu;->b:Landroid/preference/Preference;

    check-cast v0, Landroid/preference/ListPreference;

    iget-object v2, p0, Lccc71/bmw/lib/bu;->a:Lccc71/bmw/lib/bmw_settings;

    invoke-virtual {v2}, Lccc71/bmw/lib/bmw_settings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-object v3, Lccc71/bmw/lib/bmw_widget;->j:[I

    aget v1, v3, v1

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setDialogIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1439
    const/4 v0, 0x1

    return v0
.end method
