.class final Lccc71/bmw/lib/by;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field final synthetic a:Lccc71/bmw/lib/bmw_settings;

.field private final synthetic b:Lccc71/utils/m;


# direct methods
.method constructor <init>(Lccc71/bmw/lib/bmw_settings;Lccc71/utils/m;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/bmw/lib/by;->a:Lccc71/bmw/lib/bmw_settings;

    iput-object p2, p0, Lccc71/bmw/lib/by;->b:Lccc71/utils/m;

    .line 1487
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 5
    .parameter

    .prologue
    .line 1492
    new-instance v0, Lccc71/utils/i;

    iget-object v1, p0, Lccc71/bmw/lib/by;->a:Lccc71/bmw/lib/bmw_settings;

    iget-object v2, p0, Lccc71/bmw/lib/by;->b:Lccc71/utils/m;

    iget-object v3, p0, Lccc71/bmw/lib/by;->a:Lccc71/bmw/lib/bmw_settings;

    sget v4, Lccc71/bmw/lib/bmw_settings;->c:I

    invoke-static {v3, v4}, Lccc71/bmw/lib/bmw_settings;->h(Landroid/content/Context;I)I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lccc71/utils/i;-><init>(Landroid/content/Context;Lccc71/utils/m;I)V

    .line 1493
    invoke-virtual {v0}, Lccc71/utils/i;->show()V

    .line 1494
    const/4 v0, 0x1

    return v0
.end method
