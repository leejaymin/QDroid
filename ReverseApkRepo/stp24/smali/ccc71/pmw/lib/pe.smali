.class final Lccc71/pmw/lib/pe;
.super Lccc71/utils/m;
.source "SourceFile"


# instance fields
.field final synthetic a:Lccc71/pmw/lib/pd;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/pd;)V
    .locals 0
    .parameter

    .prologue
    .line 173
    iput-object p1, p0, Lccc71/pmw/lib/pe;->a:Lccc71/pmw/lib/pd;

    invoke-direct {p0}, Lccc71/utils/m;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/io/File;)V
    .locals 3
    .parameter

    .prologue
    .line 178
    iget-object v0, p0, Lccc71/pmw/lib/pe;->a:Lccc71/pmw/lib/pd;

    invoke-static {v0}, Lccc71/pmw/lib/pd;->a(Lccc71/pmw/lib/pd;)Lccc71/pmw/lib/pmw_terminal;

    move-result-object v0

    invoke-static {v0}, Lccc71/pmw/lib/pmw_terminal;->a(Lccc71/pmw/lib/pmw_terminal;)Landroid/widget/EditText;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sh "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 180
    iget-object v0, p0, Lccc71/pmw/lib/pe;->a:Lccc71/pmw/lib/pd;

    invoke-static {v0}, Lccc71/pmw/lib/pd;->a(Lccc71/pmw/lib/pd;)Lccc71/pmw/lib/pmw_terminal;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 181
    if-eqz v0, :cond_0

    .line 183
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 184
    if-eqz v0, :cond_0

    .line 186
    iget-object v1, p0, Lccc71/pmw/lib/pe;->a:Lccc71/pmw/lib/pd;

    invoke-static {v1}, Lccc71/pmw/lib/pd;->a(Lccc71/pmw/lib/pd;)Lccc71/pmw/lib/pmw_terminal;

    move-result-object v1

    invoke-virtual {v1}, Lccc71/pmw/lib/pmw_terminal;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lccc71/pmw/lib/g;->au:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 187
    invoke-static {}, Lccc71/utils/android/y;->a()Lccc71/utils/android/y;

    move-result-object v1

    invoke-virtual {v1, v0}, Lccc71/utils/android/y;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 190
    :cond_0
    return-void
.end method
