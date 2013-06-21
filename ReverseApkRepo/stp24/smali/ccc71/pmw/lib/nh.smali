.class final Lccc71/pmw/lib/nh;
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
    iput-object p1, p0, Lccc71/pmw/lib/nh;->a:Lccc71/pmw/lib/pmw_settings;

    .line 3410
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lccc71/pmw/lib/nh;)Lccc71/pmw/lib/pmw_settings;
    .locals 1
    .parameter

    .prologue
    .line 3410
    iget-object v0, p0, Lccc71/pmw/lib/nh;->a:Lccc71/pmw/lib/pmw_settings;

    return-object v0
.end method


# virtual methods
.method public final onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 3415
    new-instance v0, Lccc71/pmw/lib/ni;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/ni;-><init>(Lccc71/pmw/lib/nh;)V

    .line 3434
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 3435
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 3437
    return v1
.end method
