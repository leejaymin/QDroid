.class final Lccc71/pmw/lib/lp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field final synthetic a:Lccc71/pmw/lib/pmw_settings;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/pmw_settings;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/lp;->a:Lccc71/pmw/lib/pmw_settings;

    .line 2279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 2283
    check-cast p2, Ljava/lang/String;

    .line 2284
    iget-object v0, p0, Lccc71/pmw/lib/lp;->a:Lccc71/pmw/lib/pmw_settings;

    invoke-static {}, Lccc71/pmw/lib/pmw_settings;->c()I

    move-result v1

    invoke-static {v0, v1, p2}, Lccc71/pmw/lib/pmw_settings;->i(Landroid/content/Context;ILjava/lang/String;)V

    .line 2285
    const/4 v0, 0x1

    return v0
.end method