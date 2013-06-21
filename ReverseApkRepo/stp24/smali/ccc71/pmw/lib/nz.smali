.class final Lccc71/pmw/lib/nz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field final synthetic a:Lccc71/pmw/lib/pmw_settings;

.field private final synthetic b:Lccc71/utils/r;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/pmw_settings;Lccc71/utils/r;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/nz;->a:Lccc71/pmw/lib/pmw_settings;

    iput-object p2, p0, Lccc71/pmw/lib/nz;->b:Lccc71/utils/r;

    .line 2143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 5
    .parameter

    .prologue
    .line 2148
    new-instance v0, Lccc71/utils/n;

    iget-object v1, p0, Lccc71/pmw/lib/nz;->a:Lccc71/pmw/lib/pmw_settings;

    iget-object v2, p0, Lccc71/pmw/lib/nz;->b:Lccc71/utils/r;

    iget-object v3, p0, Lccc71/pmw/lib/nz;->a:Lccc71/pmw/lib/pmw_settings;

    invoke-static {}, Lccc71/pmw/lib/pmw_settings;->c()I

    move-result v4

    invoke-static {v3, v4}, Lccc71/pmw/lib/pmw_settings;->m(Landroid/content/Context;I)I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lccc71/utils/n;-><init>(Landroid/content/Context;Lccc71/utils/r;I)V

    .line 2149
    invoke-virtual {v0}, Lccc71/utils/n;->show()V

    .line 2150
    const/4 v0, 0x1

    return v0
.end method
