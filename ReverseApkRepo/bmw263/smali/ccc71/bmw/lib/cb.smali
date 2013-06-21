.class final Lccc71/bmw/lib/cb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field final synthetic a:Lccc71/bmw/lib/bmw_settings;

.field private final synthetic b:Landroid/preference/Preference;

.field private final synthetic c:Landroid/preference/Preference;


# direct methods
.method constructor <init>(Lccc71/bmw/lib/bmw_settings;Landroid/preference/Preference;Landroid/preference/Preference;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/bmw/lib/cb;->a:Lccc71/bmw/lib/bmw_settings;

    iput-object p2, p0, Lccc71/bmw/lib/cb;->b:Landroid/preference/Preference;

    iput-object p3, p0, Lccc71/bmw/lib/cb;->c:Landroid/preference/Preference;

    .line 1535
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1539
    check-cast p2, Ljava/lang/String;

    .line 1540
    const-string v0, ""

    if-ne p2, v0, :cond_0

    .line 1542
    iget-object v0, p0, Lccc71/bmw/lib/cb;->b:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1543
    iget-object v0, p0, Lccc71/bmw/lib/cb;->c:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1550
    :goto_0
    return v1

    .line 1547
    :cond_0
    iget-object v0, p0, Lccc71/bmw/lib/cb;->b:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1548
    iget-object v0, p0, Lccc71/bmw/lib/cb;->c:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0
.end method
