.class final Lccc71/bmw/lib/cz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field final synthetic a:Lccc71/bmw/lib/bmw_settings;


# direct methods
.method constructor <init>(Lccc71/bmw/lib/bmw_settings;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/bmw/lib/cz;->a:Lccc71/bmw/lib/bmw_settings;

    .line 1396
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1400
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1401
    iget-object v1, p0, Lccc71/bmw/lib/cz;->a:Lccc71/bmw/lib/bmw_settings;

    sget v2, Lccc71/bmw/lib/bmw_settings;->c:I

    invoke-static {v1, v2, v0}, Lccc71/bmw/lib/bmw_settings;->a(Landroid/content/Context;IZ)V

    .line 1402
    const/4 v0, 0x1

    return v0
.end method
