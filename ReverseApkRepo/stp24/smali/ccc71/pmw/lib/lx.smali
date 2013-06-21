.class final Lccc71/pmw/lib/lx;
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
    iput-object p1, p0, Lccc71/pmw/lib/lx;->a:Lccc71/pmw/lib/pmw_settings;

    .line 2372
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 2376
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2377
    iget-object v1, p0, Lccc71/pmw/lib/lx;->a:Lccc71/pmw/lib/pmw_settings;

    invoke-static {}, Lccc71/pmw/lib/pmw_settings;->c()I

    move-result v2

    invoke-static {v1, v2, v0}, Lccc71/pmw/lib/pmw_settings;->d(Landroid/content/Context;II)V

    .line 2378
    const/4 v0, 0x1

    return v0
.end method
