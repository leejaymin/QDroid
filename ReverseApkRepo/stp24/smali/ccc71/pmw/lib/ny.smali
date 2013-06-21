.class final Lccc71/pmw/lib/ny;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lccc71/utils/r;


# instance fields
.field final synthetic a:Lccc71/pmw/lib/pmw_settings;

.field private final synthetic b:Landroid/preference/Preference;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/pmw_settings;Landroid/preference/Preference;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/ny;->a:Lccc71/pmw/lib/pmw_settings;

    iput-object p2, p0, Lccc71/pmw/lib/ny;->b:Landroid/preference/Preference;

    .line 2132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 2137
    iget-object v0, p0, Lccc71/pmw/lib/ny;->a:Lccc71/pmw/lib/pmw_settings;

    invoke-static {}, Lccc71/pmw/lib/pmw_settings;->c()I

    move-result v1

    invoke-static {v0, v1, p1}, Lccc71/pmw/lib/pmw_settings;->b(Landroid/content/Context;II)V

    .line 2138
    new-instance v0, Landroid/text/SpannableString;

    iget-object v1, p0, Lccc71/pmw/lib/ny;->a:Lccc71/pmw/lib/pmw_settings;

    invoke-virtual {v1}, Lccc71/pmw/lib/pmw_settings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lccc71/pmw/lib/g;->cL:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 2139
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v1, p1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {v0}, Landroid/text/Spannable;->length()I

    move-result v2

    invoke-interface {v0, v1, v3, v2, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 2140
    iget-object v1, p0, Lccc71/pmw/lib/ny;->b:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 2141
    return-void
.end method
