.class public Lcom/rookiestudio/customize/IntListPreference;
.super Landroid/preference/ListPreference;
.source "IntListPreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 15
    invoke-direct {p0, p1}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 11
    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 12
    return-void
.end method


# virtual methods
.method protected getPersistedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "defaultReturnValue"

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/rookiestudio/customize/IntListPreference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-virtual {p0}, Lcom/rookiestudio/customize/IntListPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 41
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/rookiestudio/customize/IntListPreference;->getPersistedInt(I)I

    move-result v0

    .line 42
    .local v0, intValue:I
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 44
    .end local v0           #intValue:I
    .end local p1
    :cond_0
    return-object p1
.end method

.method protected persistString(Ljava/lang/String;)Z
    .locals 1
    .parameter "value"

    .prologue
    .line 31
    if-nez p1, :cond_0

    .line 32
    const/4 v0, 0x0

    .line 34
    :goto_0
    return v0

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/rookiestudio/customize/IntListPreference;->persistInt(I)Z

    move-result v0

    goto :goto_0
.end method

.method public setEntries([Ljava/lang/CharSequence;)V
    .locals 3
    .parameter "entries"

    .prologue
    .line 21
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 22
    array-length v2, p1

    new-array v0, v2, [Ljava/lang/String;

    .line 23
    .local v0, ValuesList:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, p1

    if-lt v1, v2, :cond_0

    .line 26
    invoke-virtual {p0, v0}, Lcom/rookiestudio/customize/IntListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 27
    return-void

    .line 24
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 23
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
