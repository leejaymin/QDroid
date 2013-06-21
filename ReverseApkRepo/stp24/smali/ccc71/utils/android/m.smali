.class public final Lccc71/utils/android/m;
.super Lccc71/utils/android/l;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lccc71/utils/android/l;-><init>()V

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

.method public final a(Landroid/preference/PreferenceActivity;Ljava/util/List;Ljava/lang/String;)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 59
    if-eqz p2, :cond_1

    .line 63
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 83
    :cond_1
    :goto_0
    return-void

    .line 63
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    .line 65
    iget-object v2, v0, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 67
    iget-object v2, v0, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 69
    invoke-virtual {p1}, Landroid/preference/PreferenceActivity;->isMultiPane()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 71
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceActivity;->switchToHeader(Landroid/preference/PreferenceActivity$Header;)V

    goto :goto_0

    .line 75
    :cond_3
    iget-object v2, v0, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    iget v3, v0, Landroid/preference/PreferenceActivity$Header;->titleRes:I

    iget-object v4, v0, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p1

    move-object v1, p3

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 76
    invoke-virtual {p1}, Landroid/preference/PreferenceActivity;->finish()V

    goto :goto_0
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
