.class final Lccc71/bmw/lib/ck;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field final synthetic a:Lccc71/bmw/lib/bmw_settings;


# direct methods
.method constructor <init>(Lccc71/bmw/lib/bmw_settings;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/bmw/lib/ck;->a:Lccc71/bmw/lib/bmw_settings;

    .line 1799
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 1804
    check-cast p2, Ljava/lang/String;

    .line 1805
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1807
    iget-object v1, p0, Lccc71/bmw/lib/ck;->a:Lccc71/bmw/lib/bmw_settings;

    check-cast p1, Landroid/preference/ListPreference;

    invoke-static {v1, p1, p2}, Lccc71/bmw/lib/bmw_settings;->a(Lccc71/bmw/lib/bmw_settings;Landroid/preference/ListPreference;Ljava/lang/String;)V

    .line 1809
    sparse-switch v0, :sswitch_data_0

    .line 1852
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 1812
    :sswitch_0
    iget-object v0, p0, Lccc71/bmw/lib/ck;->a:Lccc71/bmw/lib/bmw_settings;

    iget-object v1, p0, Lccc71/bmw/lib/ck;->a:Lccc71/bmw/lib/bmw_settings;

    sget v2, Lccc71/bmw/lib/g;->ch:I

    invoke-virtual {v1, v2}, Lccc71/bmw/lib/bmw_settings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 1813
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1816
    :sswitch_1
    iget-object v0, p0, Lccc71/bmw/lib/ck;->a:Lccc71/bmw/lib/bmw_settings;

    iget-object v1, p0, Lccc71/bmw/lib/ck;->a:Lccc71/bmw/lib/bmw_settings;

    sget v2, Lccc71/bmw/lib/g;->cl:I

    invoke-virtual {v1, v2}, Lccc71/bmw/lib/bmw_settings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 1817
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1820
    :sswitch_2
    iget-object v0, p0, Lccc71/bmw/lib/ck;->a:Lccc71/bmw/lib/bmw_settings;

    iget-object v1, p0, Lccc71/bmw/lib/ck;->a:Lccc71/bmw/lib/bmw_settings;

    sget v2, Lccc71/bmw/lib/g;->cp:I

    invoke-virtual {v1, v2}, Lccc71/bmw/lib/bmw_settings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 1821
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1824
    :sswitch_3
    iget-object v0, p0, Lccc71/bmw/lib/ck;->a:Lccc71/bmw/lib/bmw_settings;

    iget-object v1, p0, Lccc71/bmw/lib/ck;->a:Lccc71/bmw/lib/bmw_settings;

    sget v2, Lccc71/bmw/lib/g;->cj:I

    invoke-virtual {v1, v2}, Lccc71/bmw/lib/bmw_settings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 1825
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1828
    :sswitch_4
    iget-object v0, p0, Lccc71/bmw/lib/ck;->a:Lccc71/bmw/lib/bmw_settings;

    iget-object v1, p0, Lccc71/bmw/lib/ck;->a:Lccc71/bmw/lib/bmw_settings;

    sget v2, Lccc71/bmw/lib/g;->cm:I

    invoke-virtual {v1, v2}, Lccc71/bmw/lib/bmw_settings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 1829
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1832
    :sswitch_5
    iget-object v0, p0, Lccc71/bmw/lib/ck;->a:Lccc71/bmw/lib/bmw_settings;

    iget-object v1, p0, Lccc71/bmw/lib/ck;->a:Lccc71/bmw/lib/bmw_settings;

    sget v2, Lccc71/bmw/lib/g;->cn:I

    invoke-virtual {v1, v2}, Lccc71/bmw/lib/bmw_settings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 1833
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1836
    :sswitch_6
    iget-object v0, p0, Lccc71/bmw/lib/ck;->a:Lccc71/bmw/lib/bmw_settings;

    iget-object v1, p0, Lccc71/bmw/lib/ck;->a:Lccc71/bmw/lib/bmw_settings;

    sget v2, Lccc71/bmw/lib/g;->co:I

    invoke-virtual {v1, v2}, Lccc71/bmw/lib/bmw_settings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 1837
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1840
    :sswitch_7
    iget-object v0, p0, Lccc71/bmw/lib/ck;->a:Lccc71/bmw/lib/bmw_settings;

    iget-object v1, p0, Lccc71/bmw/lib/ck;->a:Lccc71/bmw/lib/bmw_settings;

    sget v2, Lccc71/bmw/lib/g;->cg:I

    invoke-virtual {v1, v2}, Lccc71/bmw/lib/bmw_settings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 1841
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 1844
    :sswitch_8
    iget-object v0, p0, Lccc71/bmw/lib/ck;->a:Lccc71/bmw/lib/bmw_settings;

    iget-object v1, p0, Lccc71/bmw/lib/ck;->a:Lccc71/bmw/lib/bmw_settings;

    sget v2, Lccc71/bmw/lib/g;->ck:I

    invoke-virtual {v1, v2}, Lccc71/bmw/lib/bmw_settings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 1845
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 1848
    :sswitch_9
    iget-object v0, p0, Lccc71/bmw/lib/ck;->a:Lccc71/bmw/lib/bmw_settings;

    iget-object v1, p0, Lccc71/bmw/lib/ck;->a:Lccc71/bmw/lib/bmw_settings;

    sget v2, Lccc71/bmw/lib/g;->ci:I

    invoke-virtual {v1, v2}, Lccc71/bmw/lib/bmw_settings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 1849
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 1809
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0x1e -> :sswitch_1
        0x3c -> :sswitch_2
        0x78 -> :sswitch_3
        0xb4 -> :sswitch_4
        0xf0 -> :sswitch_5
        0x12c -> :sswitch_6
        0x258 -> :sswitch_7
        0x708 -> :sswitch_8
        0xe10 -> :sswitch_9
    .end sparse-switch
.end method
