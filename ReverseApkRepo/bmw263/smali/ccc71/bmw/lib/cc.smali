.class final Lccc71/bmw/lib/cc;
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
    iput-object p1, p0, Lccc71/bmw/lib/cc;->a:Lccc71/bmw/lib/bmw_settings;

    iput-object p2, p0, Lccc71/bmw/lib/cc;->b:Landroid/preference/Preference;

    .line 1560
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 1564
    check-cast p2, Ljava/lang/String;

    .line 1565
    const-string v0, ""

    if-ne p2, v0, :cond_0

    .line 1567
    iget-object v0, p0, Lccc71/bmw/lib/cc;->b:Landroid/preference/Preference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1573
    :goto_0
    return v2

    .line 1571
    :cond_0
    iget-object v0, p0, Lccc71/bmw/lib/cc;->b:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0
.end method
