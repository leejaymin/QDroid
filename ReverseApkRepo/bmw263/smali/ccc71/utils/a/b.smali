.class public final Lccc71/utils/a/b;
.super Lccc71/utils/a/a;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lccc71/utils/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/preference/PreferenceActivity;ILjava/util/List;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-virtual {p1, p2, p3}, Landroid/preference/PreferenceActivity;->loadHeadersFromResource(ILjava/util/List;)V

    .line 30
    return-void
.end method

.method public final a(Ljava/util/List;IILjava/lang/String;Landroid/content/Intent;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 42
    new-instance v0, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v0}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    .line 43
    iput p3, v0, Landroid/preference/PreferenceActivity$Header;->summaryRes:I

    .line 44
    iput p2, v0, Landroid/preference/PreferenceActivity$Header;->titleRes:I

    .line 45
    if-eqz p4, :cond_0

    .line 46
    iput-object p4, v0, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 47
    :cond_0
    if-eqz p5, :cond_1

    .line 48
    iput-object p5, v0, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    .line 50
    :cond_1
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    return-void
.end method

.method public final a(Landroid/preference/PreferenceActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 16
    invoke-virtual {p1}, Landroid/preference/PreferenceActivity;->isMultiPane()Z

    move-result v0

    return v0
.end method

.method public final b(Landroid/preference/PreferenceActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 22
    invoke-virtual {p1}, Landroid/preference/PreferenceActivity;->hasHeaders()Z

    move-result v0

    return v0
.end method
