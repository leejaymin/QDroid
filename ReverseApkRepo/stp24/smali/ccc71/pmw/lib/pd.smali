.class final Lccc71/pmw/lib/pd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lccc71/pmw/lib/pmw_terminal;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/pmw_terminal;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/pd;->a:Lccc71/pmw/lib/pmw_terminal;

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lccc71/pmw/lib/pd;)Lccc71/pmw/lib/pmw_terminal;
    .locals 1
    .parameter

    .prologue
    .line 168
    iget-object v0, p0, Lccc71/pmw/lib/pd;->a:Lccc71/pmw/lib/pmw_terminal;

    return-object v0
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6
    .parameter

    .prologue
    .line 193
    new-instance v5, Lccc71/pmw/lib/pe;

    invoke-direct {v5, p0}, Lccc71/pmw/lib/pe;-><init>(Lccc71/pmw/lib/pd;)V

    .line 195
    iget-object v0, p0, Lccc71/pmw/lib/pd;->a:Lccc71/pmw/lib/pmw_terminal;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 196
    if-eqz v0, :cond_0

    iget-object v1, p0, Lccc71/pmw/lib/pd;->a:Lccc71/pmw/lib/pmw_terminal;

    invoke-virtual {v1}, Lccc71/pmw/lib/pmw_terminal;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lccc71/pmw/lib/g;->au:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 198
    :goto_0
    new-instance v0, Lccc71/utils/h;

    iget-object v1, p0, Lccc71/pmw/lib/pd;->a:Lccc71/pmw/lib/pmw_terminal;

    iget-object v2, p0, Lccc71/pmw/lib/pd;->a:Lccc71/pmw/lib/pmw_terminal;

    sget v4, Lccc71/pmw/lib/g;->eT:I

    invoke-virtual {v2, v4}, Lccc71/pmw/lib/pmw_terminal;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-boolean v4, Lccc71/pmw/b/h;->c:Z

    invoke-direct/range {v0 .. v5}, Lccc71/utils/h;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLccc71/utils/m;)V

    .line 199
    invoke-virtual {v0}, Lccc71/utils/h;->show()V

    .line 200
    return-void

    .line 196
    :cond_0
    const-string v3, "/"

    goto :goto_0
.end method
