.class final Lccc71/pmw/lib/no;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field final synthetic a:Lccc71/pmw/lib/pmw_settings;

.field private final synthetic b:Landroid/preference/Preference;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/pmw_settings;Landroid/preference/Preference;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/no;->a:Lccc71/pmw/lib/pmw_settings;

    iput-object p2, p0, Lccc71/pmw/lib/no;->b:Landroid/preference/Preference;

    .line 2112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 2116
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 2117
    const-string v0, "process_monitor_widget"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "New widget icon top: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2118
    iget-object v0, p0, Lccc71/pmw/lib/no;->a:Lccc71/pmw/lib/pmw_settings;

    invoke-static {}, Lccc71/pmw/lib/pmw_settings;->c()I

    move-result v2

    invoke-static {v0, v2, v1}, Lccc71/pmw/lib/pmw_settings;->f(Landroid/content/Context;II)V

    .line 2120
    const/4 v0, -0x1

    if-eq v1, v0, :cond_0

    .line 2121
    iget-object v0, p0, Lccc71/pmw/lib/no;->b:Landroid/preference/Preference;

    check-cast v0, Landroid/preference/ListPreference;

    iget-object v2, p0, Lccc71/pmw/lib/no;->a:Lccc71/pmw/lib/pmw_settings;

    invoke-virtual {v2}, Lccc71/pmw/lib/pmw_settings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-object v3, Lccc71/pmw/lib/pmw_widget;->o:[I

    aget v1, v3, v1

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setDialogIcon(Landroid/graphics/drawable/Drawable;)V

    .line 2122
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
